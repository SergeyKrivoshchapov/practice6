# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /home/kserg/Downloads/clion-2025.1/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/kserg/Downloads/clion-2025.1/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kserg/Desktop/studfiles/practice6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kserg/Desktop/studfiles/practice6/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/practice6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/practice6.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/practice6.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/practice6.dir/flags.make

CMakeFiles/practice6.dir/codegen:
.PHONY : CMakeFiles/practice6.dir/codegen

CMakeFiles/practice6.dir/main.cpp.o: CMakeFiles/practice6.dir/flags.make
CMakeFiles/practice6.dir/main.cpp.o: /home/kserg/Desktop/studfiles/practice6/main.cpp
CMakeFiles/practice6.dir/main.cpp.o: CMakeFiles/practice6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kserg/Desktop/studfiles/practice6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/practice6.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/practice6.dir/main.cpp.o -MF CMakeFiles/practice6.dir/main.cpp.o.d -o CMakeFiles/practice6.dir/main.cpp.o -c /home/kserg/Desktop/studfiles/practice6/main.cpp

CMakeFiles/practice6.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/practice6.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kserg/Desktop/studfiles/practice6/main.cpp > CMakeFiles/practice6.dir/main.cpp.i

CMakeFiles/practice6.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/practice6.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kserg/Desktop/studfiles/practice6/main.cpp -o CMakeFiles/practice6.dir/main.cpp.s

CMakeFiles/practice6.dir/wifi.cpp.o: CMakeFiles/practice6.dir/flags.make
CMakeFiles/practice6.dir/wifi.cpp.o: /home/kserg/Desktop/studfiles/practice6/wifi.cpp
CMakeFiles/practice6.dir/wifi.cpp.o: CMakeFiles/practice6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kserg/Desktop/studfiles/practice6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/practice6.dir/wifi.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/practice6.dir/wifi.cpp.o -MF CMakeFiles/practice6.dir/wifi.cpp.o.d -o CMakeFiles/practice6.dir/wifi.cpp.o -c /home/kserg/Desktop/studfiles/practice6/wifi.cpp

CMakeFiles/practice6.dir/wifi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/practice6.dir/wifi.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kserg/Desktop/studfiles/practice6/wifi.cpp > CMakeFiles/practice6.dir/wifi.cpp.i

CMakeFiles/practice6.dir/wifi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/practice6.dir/wifi.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kserg/Desktop/studfiles/practice6/wifi.cpp -o CMakeFiles/practice6.dir/wifi.cpp.s

# Object files for target practice6
practice6_OBJECTS = \
"CMakeFiles/practice6.dir/main.cpp.o" \
"CMakeFiles/practice6.dir/wifi.cpp.o"

# External object files for target practice6
practice6_EXTERNAL_OBJECTS =

practice6: CMakeFiles/practice6.dir/main.cpp.o
practice6: CMakeFiles/practice6.dir/wifi.cpp.o
practice6: CMakeFiles/practice6.dir/build.make
practice6: CMakeFiles/practice6.dir/compiler_depend.ts
practice6: CMakeFiles/practice6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kserg/Desktop/studfiles/practice6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable practice6"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/practice6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/practice6.dir/build: practice6
.PHONY : CMakeFiles/practice6.dir/build

CMakeFiles/practice6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/practice6.dir/cmake_clean.cmake
.PHONY : CMakeFiles/practice6.dir/clean

CMakeFiles/practice6.dir/depend:
	cd /home/kserg/Desktop/studfiles/practice6/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kserg/Desktop/studfiles/practice6 /home/kserg/Desktop/studfiles/practice6 /home/kserg/Desktop/studfiles/practice6/cmake-build-debug /home/kserg/Desktop/studfiles/practice6/cmake-build-debug /home/kserg/Desktop/studfiles/practice6/cmake-build-debug/CMakeFiles/practice6.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/practice6.dir/depend

