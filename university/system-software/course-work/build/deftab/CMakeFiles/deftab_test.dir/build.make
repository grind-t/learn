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
include deftab/CMakeFiles/deftab_test.dir/depend.make

# Include the progress variables for this target.
include deftab/CMakeFiles/deftab_test.dir/progress.make

# Include the compile flags for this target's objects.
include deftab/CMakeFiles/deftab_test.dir/flags.make

deftab/CMakeFiles/deftab_test.dir/deftab_test.c.o: deftab/CMakeFiles/deftab_test.dir/flags.make
deftab/CMakeFiles/deftab_test.dir/deftab_test.c.o: ../deftab/deftab_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gdev/labs/course3/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deftab/CMakeFiles/deftab_test.dir/deftab_test.c.o"
	cd /home/gdev/labs/course3/lab7/build/deftab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/deftab_test.dir/deftab_test.c.o   -c /home/gdev/labs/course3/lab7/deftab/deftab_test.c

deftab/CMakeFiles/deftab_test.dir/deftab_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deftab_test.dir/deftab_test.c.i"
	cd /home/gdev/labs/course3/lab7/build/deftab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gdev/labs/course3/lab7/deftab/deftab_test.c > CMakeFiles/deftab_test.dir/deftab_test.c.i

deftab/CMakeFiles/deftab_test.dir/deftab_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deftab_test.dir/deftab_test.c.s"
	cd /home/gdev/labs/course3/lab7/build/deftab && /usr/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gdev/labs/course3/lab7/deftab/deftab_test.c -o CMakeFiles/deftab_test.dir/deftab_test.c.s

# Object files for target deftab_test
deftab_test_OBJECTS = \
"CMakeFiles/deftab_test.dir/deftab_test.c.o"

# External object files for target deftab_test
deftab_test_EXTERNAL_OBJECTS =

deftab/deftab_test: deftab/CMakeFiles/deftab_test.dir/deftab_test.c.o
deftab/deftab_test: deftab/CMakeFiles/deftab_test.dir/build.make
deftab/deftab_test: deftab/libdeftab.a
deftab/deftab_test: deftab/CMakeFiles/deftab_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gdev/labs/course3/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable deftab_test"
	cd /home/gdev/labs/course3/lab7/build/deftab && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/deftab_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deftab/CMakeFiles/deftab_test.dir/build: deftab/deftab_test

.PHONY : deftab/CMakeFiles/deftab_test.dir/build

deftab/CMakeFiles/deftab_test.dir/clean:
	cd /home/gdev/labs/course3/lab7/build/deftab && $(CMAKE_COMMAND) -P CMakeFiles/deftab_test.dir/cmake_clean.cmake
.PHONY : deftab/CMakeFiles/deftab_test.dir/clean

deftab/CMakeFiles/deftab_test.dir/depend:
	cd /home/gdev/labs/course3/lab7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gdev/labs/course3/lab7 /home/gdev/labs/course3/lab7/deftab /home/gdev/labs/course3/lab7/build /home/gdev/labs/course3/lab7/build/deftab /home/gdev/labs/course3/lab7/build/deftab/CMakeFiles/deftab_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deftab/CMakeFiles/deftab_test.dir/depend

