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
CMAKE_SOURCE_DIR = "/home/arendelle/CODE_C/Data Structure/Tree"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/arendelle/CODE_C/Data Structure/Tree/build"

# Include any dependencies generated for this target.
include CMakeFiles/Signal.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Signal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Signal.dir/flags.make

CMakeFiles/Signal.dir/Signal.cpp.o: CMakeFiles/Signal.dir/flags.make
CMakeFiles/Signal.dir/Signal.cpp.o: ../Signal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arendelle/CODE_C/Data Structure/Tree/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Signal.dir/Signal.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Signal.dir/Signal.cpp.o -c "/home/arendelle/CODE_C/Data Structure/Tree/Signal.cpp"

CMakeFiles/Signal.dir/Signal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Signal.dir/Signal.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arendelle/CODE_C/Data Structure/Tree/Signal.cpp" > CMakeFiles/Signal.dir/Signal.cpp.i

CMakeFiles/Signal.dir/Signal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Signal.dir/Signal.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arendelle/CODE_C/Data Structure/Tree/Signal.cpp" -o CMakeFiles/Signal.dir/Signal.cpp.s

# Object files for target Signal
Signal_OBJECTS = \
"CMakeFiles/Signal.dir/Signal.cpp.o"

# External object files for target Signal
Signal_EXTERNAL_OBJECTS =

libSignal.a: CMakeFiles/Signal.dir/Signal.cpp.o
libSignal.a: CMakeFiles/Signal.dir/build.make
libSignal.a: CMakeFiles/Signal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/arendelle/CODE_C/Data Structure/Tree/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libSignal.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Signal.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Signal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Signal.dir/build: libSignal.a

.PHONY : CMakeFiles/Signal.dir/build

CMakeFiles/Signal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Signal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Signal.dir/clean

CMakeFiles/Signal.dir/depend:
	cd "/home/arendelle/CODE_C/Data Structure/Tree/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/arendelle/CODE_C/Data Structure/Tree" "/home/arendelle/CODE_C/Data Structure/Tree" "/home/arendelle/CODE_C/Data Structure/Tree/build" "/home/arendelle/CODE_C/Data Structure/Tree/build" "/home/arendelle/CODE_C/Data Structure/Tree/build/CMakeFiles/Signal.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Signal.dir/depend

