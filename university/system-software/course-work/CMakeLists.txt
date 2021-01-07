cmake_minimum_required(VERSION 3.0.0)
project(Macro VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(macro macro.c)
add_subdirectory(parser)
add_subdirectory(deftab)
add_subdirectory(namtab)
add_subdirectory(strutils)
target_link_libraries(macro parser)
target_link_libraries(macro deftab)
target_link_libraries(macro namtab)
target_link_libraries(macro strutils)

add_test(macro_base_test macro ../macro_base_test.txt ../macro_base.txt)
add_test(macro_recursive_test macro ../macro_recursive_test.txt ../macro_recursive.txt)
add_test(macro_nested_test macro ../macro_nested_test.txt ../macro_nested.txt)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)