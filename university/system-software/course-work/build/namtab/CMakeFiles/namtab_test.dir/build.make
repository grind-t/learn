# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gdev/labs/course3/lab7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gdev/labs/course3/lab7/build

# Include any dependencies generated for this target.
include namtab/CMakeFiles/namtab_test.dir/depend.make

# Include the progress variables for this target.
include namtab/CMakeFiles/namtab_test.dir/progress.make

# Include the compile flags for this target's objects.
include namtab/CMakeFiles/namtab_test.dir/flags.make

namtab/CMakeFiles/namtab_test.dir/namtab_test.c.o: namtab/CMakeFiles/namtab_test.dir/flags.make
namtab/CMakeFiles/namtab_test.dir/namtab_test.c.o: ../namtab/namtab_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gdev/labs/course3/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object namtab/CMakeFiles/namtab_test.dir/namtab_test.c.o"
	cd /home/gdev/labs/course3/lab7/build/namtab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/namtab_test.dir/namtab_test.c.o   -c /home/gdev/labs/course3/lab7/namtab/namtab_test.c

namtab/CMakeFiles/namtab_test.dir/namtab_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/namtab_test.dir/namtab_test.c.i"
	cd /home/gdev/labs/course3/lab7/build/namtab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gdev/labs/course3/lab7/namtab/namtab_test.c > CMakeFiles/namtab_test.dir/namtab_test.c.i

namtab/CMakeFiles/namtab_test.dir/namtab_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/namtab_test.dir/namtab_test.c.s"
	cd /home/gdev/labs/course3/lab7/build/namtab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gdev/labs/course3/lab7/namtab/namtab_test.c -o CMakeFiles/namtab_test.dir/namtab_test.c.s

# Object files for target namtab_test
namtab_test_OBJECTS = \
"CMakeFiles/namtab_test.dir/namtab_test.c.o"

# External object files for target namtab_test
namtab_test_EXTERNAL_OBJECTS =

namtab/namtab_test: namtab/CMakeFiles/namtab_test.dir/namtab_test.c.o
namtab/namtab_test: namtab/CMakeFiles/namtab_test.dir/build.make
namtab/namtab_test: namtab/libnamtab.a
namtab/namtab_test: namtab/CMakeFiles/namtab_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gdev/labs/course3/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable namtab_test"
	cd /home/gdev/labs/course3/lab7/build/namtab && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/namtab_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
namtab/CMakeFiles/namtab_test.dir/build: namtab/namtab_test

.PHONY : namtab/CMakeFiles/namtab_test.dir/build

namtab/CMakeFiles/namtab_test.dir/clean:
	cd /home/gdev/labs/course3/lab7/build/namtab && $(CMAKE_COMMAND) -P CMakeFiles/namtab_test.dir/cmake_clean.cmake
.PHONY : namtab/CMakeFiles/namtab_test.dir/clean

namtab/CMakeFiles/namtab_test.dir/depend:
	cd /home/gdev/labs/course3/lab7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gdev/labs/course3/lab7 /home/gdev/labs/course3/lab7/namtab /home/gdev/labs/course3/lab7/build /home/gdev/labs/course3/lab7/build/namtab /home/gdev/labs/course3/lab7/build/namtab/CMakeFiles/namtab_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : namtab/CMakeFiles/namtab_test.dir/depend

