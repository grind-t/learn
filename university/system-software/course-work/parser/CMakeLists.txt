add_library(parser parser.c)
target_include_directories(parser INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(parser_test parser_test.c)
target_link_libraries(parser_test parser)
add_test(parser parser_test)