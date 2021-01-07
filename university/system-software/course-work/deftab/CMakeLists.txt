add_library(deftab deftab.c)
target_include_directories(deftab INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(deftab_test deftab_test.c)
target_link_libraries(deftab_test deftab)
add_test(deftab deftab_test)