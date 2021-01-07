add_library(strutils strutils.c)
target_include_directories(strutils INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(strutils_test strutils_test.c)
target_link_libraries(strutils_test strutils)
add_test(strutils strutils_test)