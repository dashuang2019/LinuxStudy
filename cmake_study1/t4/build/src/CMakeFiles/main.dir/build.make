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
CMAKE_COMMAND = /opt/cmake/x86_64/3.16.2-1/bin/cmake

# The command to remove a file.
RM = /opt/cmake/x86_64/3.16.2-1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /var/fpwork/dmeng/cmake_study/t4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /var/fpwork/dmeng/cmake_study/t4/build

# Include any dependencies generated for this target.
include src/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/main.dir/flags.make

src/CMakeFiles/main.dir/main.c.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/var/fpwork/dmeng/cmake_study/t4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/main.dir/main.c.o"
	cd /var/fpwork/dmeng/cmake_study/t4/build/src && ccache /opt/gcc/x86_64/9.2.0a/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/main.c.o   -c /var/fpwork/dmeng/cmake_study/t4/src/main.c

src/CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	cd /var/fpwork/dmeng/cmake_study/t4/build/src && /opt/gcc/x86_64/9.2.0a/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /var/fpwork/dmeng/cmake_study/t4/src/main.c > CMakeFiles/main.dir/main.c.i

src/CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	cd /var/fpwork/dmeng/cmake_study/t4/build/src && /opt/gcc/x86_64/9.2.0a/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /var/fpwork/dmeng/cmake_study/t4/src/main.c -o CMakeFiles/main.dir/main.c.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

src/main: src/CMakeFiles/main.dir/main.c.o
src/main: src/CMakeFiles/main.dir/build.make
src/main: src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/var/fpwork/dmeng/cmake_study/t4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable main"
	cd /var/fpwork/dmeng/cmake_study/t4/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/main.dir/build: src/main

.PHONY : src/CMakeFiles/main.dir/build

src/CMakeFiles/main.dir/clean:
	cd /var/fpwork/dmeng/cmake_study/t4/build/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/main.dir/clean

src/CMakeFiles/main.dir/depend:
	cd /var/fpwork/dmeng/cmake_study/t4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/fpwork/dmeng/cmake_study/t4 /var/fpwork/dmeng/cmake_study/t4/src /var/fpwork/dmeng/cmake_study/t4/build /var/fpwork/dmeng/cmake_study/t4/build/src /var/fpwork/dmeng/cmake_study/t4/build/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/main.dir/depend
