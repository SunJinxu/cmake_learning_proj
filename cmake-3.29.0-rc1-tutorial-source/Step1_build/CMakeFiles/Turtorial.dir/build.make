# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build

# Include any dependencies generated for this target.
include CMakeFiles/Turtorial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Turtorial.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Turtorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Turtorial.dir/flags.make

CMakeFiles/Turtorial.dir/tutorial.cxx.o: CMakeFiles/Turtorial.dir/flags.make
CMakeFiles/Turtorial.dir/tutorial.cxx.o: /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1/tutorial.cxx
CMakeFiles/Turtorial.dir/tutorial.cxx.o: CMakeFiles/Turtorial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Turtorial.dir/tutorial.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Turtorial.dir/tutorial.cxx.o -MF CMakeFiles/Turtorial.dir/tutorial.cxx.o.d -o CMakeFiles/Turtorial.dir/tutorial.cxx.o -c /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1/tutorial.cxx

CMakeFiles/Turtorial.dir/tutorial.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Turtorial.dir/tutorial.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1/tutorial.cxx > CMakeFiles/Turtorial.dir/tutorial.cxx.i

CMakeFiles/Turtorial.dir/tutorial.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Turtorial.dir/tutorial.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1/tutorial.cxx -o CMakeFiles/Turtorial.dir/tutorial.cxx.s

# Object files for target Turtorial
Turtorial_OBJECTS = \
"CMakeFiles/Turtorial.dir/tutorial.cxx.o"

# External object files for target Turtorial
Turtorial_EXTERNAL_OBJECTS =

Turtorial: CMakeFiles/Turtorial.dir/tutorial.cxx.o
Turtorial: CMakeFiles/Turtorial.dir/build.make
Turtorial: CMakeFiles/Turtorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Turtorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Turtorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Turtorial.dir/build: Turtorial
.PHONY : CMakeFiles/Turtorial.dir/build

CMakeFiles/Turtorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Turtorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Turtorial.dir/clean

CMakeFiles/Turtorial.dir/depend:
	cd /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1 /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1 /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build /home/workspace/cmake_learning_proj/cmake-3.29.0-rc1-tutorial-source/Step1_build/CMakeFiles/Turtorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Turtorial.dir/depend

