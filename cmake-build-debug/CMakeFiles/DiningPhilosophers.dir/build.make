# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /home/jakub/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/jakub/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jakub/Pulpit/Systemy-Operacyjne

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DiningPhilosophers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DiningPhilosophers.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DiningPhilosophers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DiningPhilosophers.dir/flags.make

CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o: CMakeFiles/DiningPhilosophers.dir/flags.make
CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o: /home/jakub/Pulpit/Systemy-Operacyjne/Philosopher.cpp
CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o: CMakeFiles/DiningPhilosophers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o -MF CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o.d -o CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o -c /home/jakub/Pulpit/Systemy-Operacyjne/Philosopher.cpp

CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Pulpit/Systemy-Operacyjne/Philosopher.cpp > CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.i

CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Pulpit/Systemy-Operacyjne/Philosopher.cpp -o CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.s

CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o: CMakeFiles/DiningPhilosophers.dir/flags.make
CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o: /home/jakub/Pulpit/Systemy-Operacyjne/Monitor.cpp
CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o: CMakeFiles/DiningPhilosophers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o -MF CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o.d -o CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o -c /home/jakub/Pulpit/Systemy-Operacyjne/Monitor.cpp

CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Pulpit/Systemy-Operacyjne/Monitor.cpp > CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.i

CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Pulpit/Systemy-Operacyjne/Monitor.cpp -o CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.s

CMakeFiles/DiningPhilosophers.dir/main.cpp.o: CMakeFiles/DiningPhilosophers.dir/flags.make
CMakeFiles/DiningPhilosophers.dir/main.cpp.o: /home/jakub/Pulpit/Systemy-Operacyjne/main.cpp
CMakeFiles/DiningPhilosophers.dir/main.cpp.o: CMakeFiles/DiningPhilosophers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DiningPhilosophers.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DiningPhilosophers.dir/main.cpp.o -MF CMakeFiles/DiningPhilosophers.dir/main.cpp.o.d -o CMakeFiles/DiningPhilosophers.dir/main.cpp.o -c /home/jakub/Pulpit/Systemy-Operacyjne/main.cpp

CMakeFiles/DiningPhilosophers.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DiningPhilosophers.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Pulpit/Systemy-Operacyjne/main.cpp > CMakeFiles/DiningPhilosophers.dir/main.cpp.i

CMakeFiles/DiningPhilosophers.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DiningPhilosophers.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Pulpit/Systemy-Operacyjne/main.cpp -o CMakeFiles/DiningPhilosophers.dir/main.cpp.s

# Object files for target DiningPhilosophers
DiningPhilosophers_OBJECTS = \
"CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o" \
"CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o" \
"CMakeFiles/DiningPhilosophers.dir/main.cpp.o"

# External object files for target DiningPhilosophers
DiningPhilosophers_EXTERNAL_OBJECTS =

DiningPhilosophers: CMakeFiles/DiningPhilosophers.dir/Philosopher.cpp.o
DiningPhilosophers: CMakeFiles/DiningPhilosophers.dir/Monitor.cpp.o
DiningPhilosophers: CMakeFiles/DiningPhilosophers.dir/main.cpp.o
DiningPhilosophers: CMakeFiles/DiningPhilosophers.dir/build.make
DiningPhilosophers: CMakeFiles/DiningPhilosophers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable DiningPhilosophers"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DiningPhilosophers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DiningPhilosophers.dir/build: DiningPhilosophers
.PHONY : CMakeFiles/DiningPhilosophers.dir/build

CMakeFiles/DiningPhilosophers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DiningPhilosophers.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DiningPhilosophers.dir/clean

CMakeFiles/DiningPhilosophers.dir/depend:
	cd /home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakub/Pulpit/Systemy-Operacyjne /home/jakub/Pulpit/Systemy-Operacyjne /home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug /home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug /home/jakub/Pulpit/Systemy-Operacyjne/cmake-build-debug/CMakeFiles/DiningPhilosophers.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/DiningPhilosophers.dir/depend

