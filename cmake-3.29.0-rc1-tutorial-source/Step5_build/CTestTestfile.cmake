# CMake generated Testfile for 
# Source directory: /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5
# Build directory: /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "./Tutorial" "25")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;50;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Usage "./Tutorial")
set_tests_properties(Usage PROPERTIES  PROPERTY_REGULAR_EXPRESSION "Usage.*number" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;57;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(StandardUse "./Tutorial" "4")
set_tests_properties(StandardUse PROPERTIES  PROPERTY_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;66;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp4 "./Tutorial" "arg")
set_tests_properties(Cmp4 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;78;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp9 "./Tutorial" "arg")
set_tests_properties(Cmp9 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "9 is 3" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;79;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp5 "./Tutorial" "arg")
set_tests_properties(Cmp5 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "5 is 2.236" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;80;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp7 "./Tutorial" "arg")
set_tests_properties(Cmp7 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "7 is 2.645" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;81;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp25 "./Tutorial" "arg")
set_tests_properties(Cmp25 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "25 is 5" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;82;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp-25 "./Tutorial" "arg")
set_tests_properties(Cmp-25 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "-25 is (-nan|nan|0)" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;83;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
add_test(Cmp0.0001 "./Tutorial" "arg")
set_tests_properties(Cmp0.0001 PROPERTIES  PROPERTY_REGULAR_EXPRESSION "0.0001 is 0.01" _BACKTRACE_TRIPLES "/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;73;add_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;84;do_test;/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step5/CMakeLists.txt;0;")
subdirs("MathFunctions")
