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
CMAKE_COMMAND = /snap/clion/121/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/121/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elad/FEC_Erasure_Code_Unit_Test_Relay

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FEC_Erasure_Code_Sender.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FEC_Erasure_Code_Sender.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FEC_Erasure_Code_Sender.dir/flags.make

CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o: CMakeFiles/FEC_Erasure_Code_Sender.dir/flags.make
CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o: ../application_sender_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o -c /home/elad/FEC_Erasure_Code_Unit_Test_Relay/application_sender_main.cpp

CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elad/FEC_Erasure_Code_Unit_Test_Relay/application_sender_main.cpp > CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.i

CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elad/FEC_Erasure_Code_Unit_Test_Relay/application_sender_main.cpp -o CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.s

# Object files for target FEC_Erasure_Code_Sender
FEC_Erasure_Code_Sender_OBJECTS = \
"CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o"

# External object files for target FEC_Erasure_Code_Sender
FEC_Erasure_Code_Sender_EXTERNAL_OBJECTS =

../bin/FEC_Erasure_Code_Sender: CMakeFiles/FEC_Erasure_Code_Sender.dir/application_sender_main.cpp.o
../bin/FEC_Erasure_Code_Sender: CMakeFiles/FEC_Erasure_Code_Sender.dir/build.make
../bin/FEC_Erasure_Code_Sender: libfec_part.a
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_system.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_thread.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_log.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_coroutine.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_log_setup.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_regex.so
../bin/FEC_Erasure_Code_Sender: /usr/lib/x86_64-linux-gnu/libboost_context.so
../bin/FEC_Erasure_Code_Sender: CMakeFiles/FEC_Erasure_Code_Sender.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/FEC_Erasure_Code_Sender"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FEC_Erasure_Code_Sender.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FEC_Erasure_Code_Sender.dir/build: ../bin/FEC_Erasure_Code_Sender

.PHONY : CMakeFiles/FEC_Erasure_Code_Sender.dir/build

CMakeFiles/FEC_Erasure_Code_Sender.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FEC_Erasure_Code_Sender.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FEC_Erasure_Code_Sender.dir/clean

CMakeFiles/FEC_Erasure_Code_Sender.dir/depend:
	cd /home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elad/FEC_Erasure_Code_Unit_Test_Relay /home/elad/FEC_Erasure_Code_Unit_Test_Relay /home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug /home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug /home/elad/FEC_Erasure_Code_Unit_Test_Relay/cmake-build-debug/CMakeFiles/FEC_Erasure_Code_Sender.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FEC_Erasure_Code_Sender.dir/depend

