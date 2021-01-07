# CMake generated Testfile for 
# Source directory: /home/gdev/labs/course3/lab7
# Build directory: /home/gdev/labs/course3/lab7/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(macro_base_test "macro" "../macro_base_test.txt" "../macro_base.txt")
set_tests_properties(macro_base_test PROPERTIES  _BACKTRACE_TRIPLES "/home/gdev/labs/course3/lab7/CMakeLists.txt;17;add_test;/home/gdev/labs/course3/lab7/CMakeLists.txt;0;")
add_test(macro_recursive_test "macro" "../macro_recursive_test.txt" "../macro_recursive.txt")
set_tests_properties(macro_recursive_test PROPERTIES  _BACKTRACE_TRIPLES "/home/gdev/labs/course3/lab7/CMakeLists.txt;18;add_test;/home/gdev/labs/course3/lab7/CMakeLists.txt;0;")
add_test(macro_nested_test "macro" "../macro_nested_test.txt" "../macro_nested.txt")
set_tests_properties(macro_nested_test PROPERTIES  _BACKTRACE_TRIPLES "/home/gdev/labs/course3/lab7/CMakeLists.txt;19;add_test;/home/gdev/labs/course3/lab7/CMakeLists.txt;0;")
subdirs("parser")
subdirs("deftab")
subdirs("namtab")
subdirs("strutils")
