# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/andrew/.local/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/andrew/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrew/CppProjects/TestRSA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrew/CppProjects/TestRSA/build

# Include any dependencies generated for this target.
include include/CMakeFiles/rsa.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/CMakeFiles/rsa.dir/compiler_depend.make

# Include the progress variables for this target.
include include/CMakeFiles/rsa.dir/progress.make

# Include the compile flags for this target's objects.
include include/CMakeFiles/rsa.dir/flags.make

include/CMakeFiles/rsa.dir/rsa.cpp.o: include/CMakeFiles/rsa.dir/flags.make
include/CMakeFiles/rsa.dir/rsa.cpp.o: /home/andrew/CppProjects/TestRSA/include/rsa.cpp
include/CMakeFiles/rsa.dir/rsa.cpp.o: include/CMakeFiles/rsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrew/CppProjects/TestRSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/CMakeFiles/rsa.dir/rsa.cpp.o"
	cd /home/andrew/CppProjects/TestRSA/build/include && /usr/lib/llvm-15/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/CMakeFiles/rsa.dir/rsa.cpp.o -MF CMakeFiles/rsa.dir/rsa.cpp.o.d -o CMakeFiles/rsa.dir/rsa.cpp.o -c /home/andrew/CppProjects/TestRSA/include/rsa.cpp

include/CMakeFiles/rsa.dir/rsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rsa.dir/rsa.cpp.i"
	cd /home/andrew/CppProjects/TestRSA/build/include && /usr/lib/llvm-15/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrew/CppProjects/TestRSA/include/rsa.cpp > CMakeFiles/rsa.dir/rsa.cpp.i

include/CMakeFiles/rsa.dir/rsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rsa.dir/rsa.cpp.s"
	cd /home/andrew/CppProjects/TestRSA/build/include && /usr/lib/llvm-15/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrew/CppProjects/TestRSA/include/rsa.cpp -o CMakeFiles/rsa.dir/rsa.cpp.s

# Object files for target rsa
rsa_OBJECTS = \
"CMakeFiles/rsa.dir/rsa.cpp.o"

# External object files for target rsa
rsa_EXTERNAL_OBJECTS =

include/librsa.a: include/CMakeFiles/rsa.dir/rsa.cpp.o
include/librsa.a: include/CMakeFiles/rsa.dir/build.make
include/librsa.a: include/CMakeFiles/rsa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrew/CppProjects/TestRSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librsa.a"
	cd /home/andrew/CppProjects/TestRSA/build/include && $(CMAKE_COMMAND) -P CMakeFiles/rsa.dir/cmake_clean_target.cmake
	cd /home/andrew/CppProjects/TestRSA/build/include && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/CMakeFiles/rsa.dir/build: include/librsa.a
.PHONY : include/CMakeFiles/rsa.dir/build

include/CMakeFiles/rsa.dir/clean:
	cd /home/andrew/CppProjects/TestRSA/build/include && $(CMAKE_COMMAND) -P CMakeFiles/rsa.dir/cmake_clean.cmake
.PHONY : include/CMakeFiles/rsa.dir/clean

include/CMakeFiles/rsa.dir/depend:
	cd /home/andrew/CppProjects/TestRSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrew/CppProjects/TestRSA /home/andrew/CppProjects/TestRSA/include /home/andrew/CppProjects/TestRSA/build /home/andrew/CppProjects/TestRSA/build/include /home/andrew/CppProjects/TestRSA/build/include/CMakeFiles/rsa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/CMakeFiles/rsa.dir/depend
