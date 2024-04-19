#include <fstream>
#include <memory>
#include <algorithm>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <set>
#include <vector>
#include <utility>
#include <cstdio>
#include <list>
#include <map>
#include <iostream>
#include <string>
#include <stdexcept>
#include <unordered_map>

#include "llvm-c/Core.h"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/ADT/StringSet.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/LinkAllPasses.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Analysis/InstructionSimplify.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/IR/PassManager.h"
//#include "llvm/Analysis/CGSCCAnalysisManager.h"
//#include "llvm/Analysis/ModuleAnalysisManager.h"


using namespace llvm;
using namespace std;

static LLVMContext Context;

LLVMContext& getGlobalContext() {
  return Context;
}


static void SoftwareFaultTolerance(Module *);

static void print_csv_file(std::string outputfile);

static cl::opt<std::string>
        InputFilename(cl::Positional, cl::desc("<input bitcode>"), cl::Required, cl::init("-"));

static cl::opt<std::string>
        OutputFilename(cl::Positional, cl::desc("<output bitcode>"), cl::Required, cl::init("out.bc"));

static cl::opt<bool>
        NoSWFT("no-swft",
              cl::desc("Do not perform SWFT."),
              cl::init(false));


static cl::opt<bool>
        Verbose("verbose",
                    cl::desc("Verbose stats."),
                    cl::init(false));

static cl::opt<bool>
        NoCheck("no",
                cl::desc("Do not check for valid IR."),
                cl::init(false));

// Use this to enable your bonus code
static cl::opt<bool>
        Bonus("bonus",
                cl::desc("Run the bonus code."),
                cl::init(false));

// Use these to control whether or not parts of your pass run
static cl::opt<bool>
        NoReplicate("no-replicate",
              cl::desc("Do not perform code replication."),
              cl::init(false));

static cl::opt<bool>
        NoControlProtection("no-control-protection",
              cl::desc("Do not perform control flow protection."),
              cl::init(false));



void RunO2(Module *M);
void BuildHelperFunctions(Module *);
void summarize(Module *M);
FunctionCallee AssertFT;
FunctionCallee AssertCFG;

int main(int argc, char **argv) {
    // Parse command line arguments
    cl::ParseCommandLineOptions(argc, argv, "llvm system compiler\n");

    // Handle creating output files and shutting down properly
    llvm_shutdown_obj Y;  // Call llvm_shutdown() on exit.

    // LLVM idiom for constructing output file.
    std::unique_ptr<ToolOutputFile> Out;
    std::string ErrorInfo;
    std::error_code EC;
    Out.reset(new ToolOutputFile(OutputFilename.c_str(), EC,
                                 sys::fs::OF_None));

    EnableStatistics();

    // Read in module
    SMDiagnostic Err;
    std::unique_ptr<Module> M;
    M = parseIRFile(InputFilename, Err, Context);

    // If errors, fail
    if (M.get() == 0)
    {
        Err.print(argv[0], errs());
        return 1;
    }

    // Run O2 optimizations
    RunO2(M.get());

    BuildHelperFunctions(M.get());      
    
    if (!NoSWFT) {
      SoftwareFaultTolerance(M.get());
    }

    // Collect statistics on Module
    summarize(M.get());
    print_csv_file(OutputFilename);

    if (Verbose)
        PrintStatistics(errs());

    // Verify integrity of Module, do this by default
    if (!NoCheck)
    {
        legacy::PassManager Passes;
        Passes.add(createVerifierPass());
        Passes.run(*M.get());
    }

    // Write final bitcode
    WriteBitcodeToFile(*M.get(), Out->os());
    Out->keep();

    return 0;
}

static void print_csv_file(std::string outputfile)
{
    std::ofstream stats(outputfile + ".stats");
    auto a = GetStatistics();
    for (auto p : a) {
        stats << p.first.str() << "," << p.second << std::endl;
    }
    stats.close();
}

// Collect this statistic; increment for each instruction you add.
static llvm::Statistic SWFTAdded = {"", "SWFTadd", "SWFT added instructions"};

bool CanBeCloned(Instruction *InstructionPointer) 
{
  // Get the opcode of the instruction
  if (isa<UndefValue>(InstructionPointer))
    return false;
  
  int opcode = InstructionPointer->getOpcode();
  // Switch statement to handle different opcodes
  switch(opcode)
  { 
    // List of opcodes where the instruction's result might be used
    case Instruction::Add:
    case Instruction::FNeg:
    case Instruction::FAdd: 	
    case Instruction::Sub:
    case Instruction::FSub: 	
    case Instruction::Mul:
    case Instruction::FMul: 	
    case Instruction::UDiv:	
    case Instruction::SDiv:	
    case Instruction::FDiv:	
    case Instruction::URem: 	
    case Instruction::SRem: 	
    case Instruction::FRem:
    case Instruction::Shl: 	
    case Instruction::LShr: 	
    case Instruction::AShr: 	
    case Instruction::And: 	
    case Instruction::Or: 	
    case Instruction::Xor:
    case Instruction::GetElementPtr: 	
    case Instruction::Trunc: 	
    case Instruction::ZExt: 	
    case Instruction::SExt: 	
    case Instruction::FPToUI: 	
    case Instruction::FPToSI: 	
    case Instruction::UIToFP: 	
    case Instruction::SIToFP: 	
    case Instruction::FPTrunc: 	
    case Instruction::FPExt: 	
    case Instruction::PtrToInt: 	
    case Instruction::IntToPtr: 	
    case Instruction::BitCast: 	
    case Instruction::AddrSpaceCast: 	
    case Instruction::ICmp: 	
    case Instruction::FCmp: 	
    case Instruction::ExtractElement: 	
    case Instruction::InsertElement: 	
    case Instruction::ShuffleVector: 	
    case Instruction::ExtractValue: 	
    case Instruction::InsertValue:
    case Instruction::PHI: 
    case Instruction::Select:
    case Instruction::Load: 
      return true;
    default: 
        // Any other opcode is not considered
      return false;
  }
  return false; // Default return value if the opcode is not in the list
}

bool Check_if_value_exists_in_map(const unordered_map<Instruction *, Instruction *>& ClonedMap, const Instruction *value)
{
  for (const auto& pair : ClonedMap) 
  {
    if (pair.second == value) 
      return true;
  }
  return false;
}

static void SoftwareFaultTolerance(Module *M) 
{
  Module::FunctionListType &list = M->getFunctionList();

  std::vector<Function*> flist;
  // FIND THE ASSERT FUNCTIONS AND DO NOT INSTRUMENT THEM
  for(Module::FunctionListType::iterator it = list.begin(); it!=list.end(); it++) 
  {
    Function *fptr = &*it;
    if (fptr->size() > 0 && fptr != AssertFT.getCallee() && fptr != AssertCFG.getCallee())
      flist.push_back(fptr);
  }

  // PROTECT CODE IN EACH FUNCTION
  for(std::vector<Function*>::iterator FunctionIteratorCounter = flist.begin(); FunctionIteratorCounter !=flist.end(); FunctionIteratorCounter++)
  {
    // CALL A FUNCTION TO REPLICATE CODE in *it
    unordered_map<Instruction *, Instruction *> cloneMap;

    Function *FunctionPointer = *FunctionIteratorCounter; 

    // Looping over all the basic blocks in the function, F
    for (Function::iterator BasicBlockIteratorCounter = FunctionPointer->begin(); BasicBlockIteratorCounter != FunctionPointer->end(); BasicBlockIteratorCounter++)
    { 
      BasicBlock *BasicBlockPointer = &*BasicBlockIteratorCounter;
      Instruction *FirstNonPhi = BasicBlockPointer->getFirstNonPHI();
      std::vector<Instruction *> PhiToBeCloned;
      for (BasicBlock::iterator InstructionIteratorCounter = BasicBlockPointer->begin(); InstructionIteratorCounter != BasicBlockPointer->end();)
      {
        Instruction *InstructionPointer = &*InstructionIteratorCounter;
        if (CanBeCloned(InstructionPointer))
        {
            Instruction *ClonedInstructionPointer = InstructionPointer->clone();
            InstructionIteratorCounter++;
            ClonedInstructionPointer->insertBefore(&*InstructionIteratorCounter);
            SWFTAdded++;
            cloneMap[InstructionPointer] = ClonedInstructionPointer;

            IRBuilder<> Builder(&*InstructionIteratorCounter);   
            if (InstructionPointer->getOpcode() == Instruction::PHI)
            {
              FirstNonPhi = BasicBlockPointer->getFirstNonPHI();
              Builder.SetInsertPoint(FirstNonPhi);
            }

            Value *Op1 = InstructionPointer;
            Value *Op2 = ClonedInstructionPointer;

            if ((Op1->getType()->isIntegerTy()))
            {
                // Insert icmp instruction after clone instruction
                Value *ICmp = Builder.CreateICmpEQ(Op1, Op2, "icmpEq");
                SWFTAdded++;
                InstructionIteratorCounter++;
                
                // Insert zext instruction after icmp instruction
                Value *ZExt = Builder.CreateZExt(ICmp, Type::getInt32Ty(M->getContext()), "zext");
                SWFTAdded++;
                InstructionIteratorCounter++;
                
                // Insert assert_ft function after zext instruction
                std::vector<Value*> args;
                args.push_back(ZExt);
                args.push_back(Builder.getInt32(35)); // unique id
                Function *F = M->getFunction("assert_ft");
                Builder.CreateCall(F->getFunctionType(), F, args);
                SWFTAdded++;
                InstructionIteratorCounter++;
            }
        }
        else
          InstructionIteratorCounter++;
      }

      // Looping over all instructions in a basic block
      for (BasicBlock::iterator InstructionIteratorCounter = BasicBlockPointer->begin(); InstructionIteratorCounter != BasicBlockPointer->end();)
      {
        Instruction *InstructionPointer = &*InstructionIteratorCounter;
        InstructionIteratorCounter++;
        if (cloneMap.find(InstructionPointer) != cloneMap.end())  //Instruction has a cloned version
        {
          Instruction *ClonedInstructionPointer = cloneMap[InstructionPointer];
          for (int OperandsIterator = 0; OperandsIterator < LLVMGetNumOperands(wrap(ClonedInstructionPointer)); OperandsIterator++)
          {
            Instruction *ClonedInstrOperand = dyn_cast<Instruction> (ClonedInstructionPointer->getOperand(OperandsIterator));
            if((ClonedInstrOperand != nullptr) && (cloneMap.find(ClonedInstrOperand) != cloneMap.end()))  //Operand is an instruction and has a cloned version
              ClonedInstructionPointer->setOperand(OperandsIterator, cloneMap[ClonedInstrOperand]);
          }
        }
      }
    }


    //CFG Verification
    unordered_map<BasicBlock *, Value *> DestMap;
    unordered_map<BasicBlock *, Value *> DiffMap;
    unordered_map<BasicBlock *, PHINode *> DiffPhiMap;
    unordered_map<BasicBlock *, PHINode *> DestPhiMap;

    int RandomNumber = 123;
    for (Function::iterator BasicBlockIteratorCounter = FunctionPointer->begin(); BasicBlockIteratorCounter != FunctionPointer->end(); BasicBlockIteratorCounter++)
    {
      BasicBlock *BasicBlockPointer = &*BasicBlockIteratorCounter;
      int ComputedValue = (RandomNumber << 20) | (BasicBlockPointer->size() << 8) | (((RandomNumber << 20) * (BasicBlockPointer->size() << 8)) % 37);
      RandomNumber += 49;  //Random for uniqueness

      LLVMContext &context = M->getContext(); // Assuming M is your module
      Type *intType = Type::getInt32Ty(context); // Assuming you want a 32-bit integer
      Value *llvmValue = ConstantInt::get(intType, ComputedValue);
      DestMap[BasicBlockPointer] = llvmValue; 
    }
    
    for (Function::iterator BasicBlockIteratorCounter = FunctionPointer->begin(); BasicBlockIteratorCounter != FunctionPointer->end(); BasicBlockIteratorCounter++)
    { 
        BasicBlock *BasicBlockPointer = &*BasicBlockIteratorCounter;

        Instruction *FirstNonPhi = BasicBlockPointer->getFirstNonPHI();
        IRBuilder<> Builder(FirstNonPhi);
        
        if (pred_begin(BasicBlockPointer) != pred_end(BasicBlockPointer))   //if there is any predecessor
        {
          // Create PHINodes for Dest and Diff
          PHINode *DestPhi = Builder.CreatePHI(Type::getInt32Ty(M->getContext()), 0, "cfg_DestPhi");
          PHINode *DiffPhi = Builder.CreatePHI(Type::getInt32Ty(M->getContext()), 0, "cfg_DiffPhi");
          DestPhiMap[BasicBlockPointer] = DestPhi;
          DiffPhiMap[BasicBlockPointer] = DiffPhi;
          
          // Insert code to compute new Dest, its comparison
          Value *DestXor = Builder.CreateXor(DestPhi, DiffPhi);
          Value *DestICmp = Builder.CreateICmpEQ(DestXor, DestMap[BasicBlockPointer], "cfg_icmpEq"); 
          Value *DestZExt = Builder.CreateZExt(DestICmp, Type::getInt32Ty(M->getContext()), "cfg_zext");
          
          // Insert call to assert_ft_cfg call
          std::vector<Value*> Args;
          Args.push_back(DestZExt);
          Args.push_back(DestXor);
          Args.push_back(Builder.getInt32(35)); // unique id
          Builder.CreateCall(M->getFunction("assert_cfg_ft"), Args);
        }
     
        if (succ_begin(BasicBlockPointer) != succ_end(BasicBlockPointer))  //if there is any successor
        {
          // Insert code at the end of the block to compute new Diff  
          Instruction *TerminalInstruction = BasicBlockPointer->getTerminator();

          if (BranchInst *Branch = dyn_cast<BranchInst>(TerminalInstruction)) 
          {
              Builder.SetInsertPoint(Branch);
              if (Branch->isConditional())  //Conditional branch
              {
                  Value *Condition = Branch->getCondition();
                  BasicBlock *TrueDestination = Branch->getSuccessor(0);
                  BasicBlock *FalseDestination = Branch->getSuccessor(1);

                  // Select the destination based on the condition
                  IRBuilder<> Builder(Branch);
                  Value *SelectedDestValue = Builder.CreateSelect(Condition, DestMap[TrueDestination], DestMap[FalseDestination]);

                  // Perform the XOR operation
                  Value *BBDestValue = DestMap[BasicBlockPointer];
                  Value *DestXor = Builder.CreateXor(BBDestValue, SelectedDestValue);
                  DiffMap[BasicBlockPointer] = DestXor;
              } 
              else                          //Direct branch
              {
                  BasicBlock *Destination = Branch->getSuccessor(0);
                  Value *DestXor = Builder.CreateXor(DestMap[BasicBlockPointer], DestMap[Destination]);
                  DiffMap[BasicBlockPointer] = DestXor;
              }
          }
        }
    }

    /*for (const auto& entry : DiffMap) 
    {
        BasicBlock *bb = entry.first;
        Value *val = entry.second;
        // Print the address of the BasicBlock and the Value it maps to
        cout << "BasicBlock: " << bb << ", Value: " << val << endl;
    }*/

    for (Function::iterator BasicBlockIteratorCounter = FunctionPointer->begin(); BasicBlockIteratorCounter != FunctionPointer->end(); BasicBlockIteratorCounter++)
    { 
      BasicBlock *BasicBlockPointer = &*BasicBlockIteratorCounter;
      
      for (BasicBlock *PredPointer : predecessors(BasicBlockPointer)) 
      {
        PHINode *DestPhi = DestPhiMap[BasicBlockPointer];
        PHINode *DiffPhi = DiffPhiMap[BasicBlockPointer];
        DestPhi->addIncoming(DestMap[PredPointer], PredPointer);
        if (DiffMap.find(PredPointer) != DiffMap.end()) 
          DiffPhi->addIncoming(DiffMap[PredPointer], PredPointer);
        else // Null data from DiffMap
        {
            // Create XOR of two DiffMap values
            IRBuilder<> Builder(BasicBlockPointer->getFirstNonPHI());

            Value *PredDiffValue = DestMap[PredPointer];
            Value *CurrDiffValue = DestMap[BasicBlockPointer];

            // Create XOR instruction for PredDiffValue and CurrDiffValue
            Value *XorResult = Builder.CreateXor(CurrDiffValue, PredDiffValue);

            // Add the incoming value to DiffPhi
            DiffPhi->addIncoming(XorResult, PredPointer);
        }
      }
    }
  }
}




