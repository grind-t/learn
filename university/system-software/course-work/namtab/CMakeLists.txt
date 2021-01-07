add_library(namtab namtab.c)
target_link_libraries(namtab m)
target_include_directories(namtab INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(namtab_test namtab_test.c)
target_link_libraries(namtab_test namtab)
add_test(namtab namtab_test)