# CMake generated Testfile for 
# Source directory: /ece566/projects/p3/C++
# Build directory: /ece566/projects/p3/C++/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Usage "/ece566/projects/p3/C++/build/p3" "-h")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "USAGE:" _BACKTRACE_TRIPLES "/ece566/projects/p3/C++/CMakeLists.txt;28;add_test;/ece566/projects/p3/C++/CMakeLists.txt;0;")
subdirs("tests")
