# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/deepanshu-dabas/Downloads/lab3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deepanshu-dabas/Downloads/lab3/build

# Include any dependencies generated for this target.
include CMakeFiles/lab3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab3.dir/flags.make

CMakeFiles/lab3.dir/src/main.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/main.cpp.o: /home/deepanshu-dabas/Downloads/lab3/src/main.cpp
CMakeFiles/lab3.dir/src/main.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab3.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/src/main.cpp.o -MF CMakeFiles/lab3.dir/src/main.cpp.o.d -o CMakeFiles/lab3.dir/src/main.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/src/main.cpp

CMakeFiles/lab3.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/src/main.cpp > CMakeFiles/lab3.dir/src/main.cpp.i

CMakeFiles/lab3.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/src/main.cpp -o CMakeFiles/lab3.dir/src/main.cpp.s

CMakeFiles/lab3.dir/src/camera.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/camera.cpp.o: /home/deepanshu-dabas/Downloads/lab3/src/camera.cpp
CMakeFiles/lab3.dir/src/camera.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab3.dir/src/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/src/camera.cpp.o -MF CMakeFiles/lab3.dir/src/camera.cpp.o.d -o CMakeFiles/lab3.dir/src/camera.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/src/camera.cpp

CMakeFiles/lab3.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/src/camera.cpp > CMakeFiles/lab3.dir/src/camera.cpp.i

CMakeFiles/lab3.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/src/camera.cpp -o CMakeFiles/lab3.dir/src/camera.cpp.s

CMakeFiles/lab3.dir/src/cube.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/cube.cpp.o: /home/deepanshu-dabas/Downloads/lab3/src/cube.cpp
CMakeFiles/lab3.dir/src/cube.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab3.dir/src/cube.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/src/cube.cpp.o -MF CMakeFiles/lab3.dir/src/cube.cpp.o.d -o CMakeFiles/lab3.dir/src/cube.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/src/cube.cpp

CMakeFiles/lab3.dir/src/cube.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/src/cube.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/src/cube.cpp > CMakeFiles/lab3.dir/src/cube.cpp.i

CMakeFiles/lab3.dir/src/cube.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/src/cube.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/src/cube.cpp -o CMakeFiles/lab3.dir/src/cube.cpp.s

CMakeFiles/lab3.dir/src/utils.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/utils.cpp.o: /home/deepanshu-dabas/Downloads/lab3/src/utils.cpp
CMakeFiles/lab3.dir/src/utils.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lab3.dir/src/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/src/utils.cpp.o -MF CMakeFiles/lab3.dir/src/utils.cpp.o.d -o CMakeFiles/lab3.dir/src/utils.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/src/utils.cpp

CMakeFiles/lab3.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/src/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/src/utils.cpp > CMakeFiles/lab3.dir/src/utils.cpp.i

CMakeFiles/lab3.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/src/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/src/utils.cpp -o CMakeFiles/lab3.dir/src/utils.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_glfw.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_glfw.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_glfw.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_glfw.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_opengl3.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_opengl3.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_opengl3.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_demo.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_demo.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_demo.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_demo.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_draw.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_draw.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_draw.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_draw.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.s

CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o: /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_widgets.cpp
CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o -MF CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o -c /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_widgets.cpp

CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_widgets.cpp > CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.i

CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu-dabas/Downloads/lab3/depends/imgui/imgui_widgets.cpp -o CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.s

# Object files for target lab3
lab3_OBJECTS = \
"CMakeFiles/lab3.dir/src/main.cpp.o" \
"CMakeFiles/lab3.dir/src/camera.cpp.o" \
"CMakeFiles/lab3.dir/src/cube.cpp.o" \
"CMakeFiles/lab3.dir/src/utils.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o" \
"CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o"

# External object files for target lab3
lab3_EXTERNAL_OBJECTS =

/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/src/main.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/src/camera.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/src/cube.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/src/utils.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui_impl_glfw.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui_impl_opengl3.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui_demo.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui_draw.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/depends/imgui/imgui_widgets.cpp.o
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/build.make
/home/deepanshu-dabas/Downloads/lab3/lab3: /usr/lib/x86_64-linux-gnu/libGL.so
/home/deepanshu-dabas/Downloads/lab3/lab3: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/deepanshu-dabas/Downloads/lab3/lab3: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
/home/deepanshu-dabas/Downloads/lab3/lab3: /usr/lib/x86_64-linux-gnu/libGLEW.so
/home/deepanshu-dabas/Downloads/lab3/lab3: CMakeFiles/lab3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable /home/deepanshu-dabas/Downloads/lab3/lab3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab3.dir/build: /home/deepanshu-dabas/Downloads/lab3/lab3
.PHONY : CMakeFiles/lab3.dir/build

CMakeFiles/lab3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab3.dir/clean

CMakeFiles/lab3.dir/depend:
	cd /home/deepanshu-dabas/Downloads/lab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepanshu-dabas/Downloads/lab3 /home/deepanshu-dabas/Downloads/lab3 /home/deepanshu-dabas/Downloads/lab3/build /home/deepanshu-dabas/Downloads/lab3/build /home/deepanshu-dabas/Downloads/lab3/build/CMakeFiles/lab3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab3.dir/depend

