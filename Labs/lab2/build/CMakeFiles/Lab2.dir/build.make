# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /snap/cmake/1336/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1336/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build"

# Include any dependencies generated for this target.
include CMakeFiles/Lab2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab2.dir/flags.make

CMakeFiles/Lab2.dir/src/main.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/src/main.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/src/main.cpp
CMakeFiles/Lab2.dir/src/main.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab2.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/src/main.cpp.o -MF CMakeFiles/Lab2.dir/src/main.cpp.o.d -o CMakeFiles/Lab2.dir/src/main.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/main.cpp"

CMakeFiles/Lab2.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/main.cpp" > CMakeFiles/Lab2.dir/src/main.cpp.i

CMakeFiles/Lab2.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/main.cpp" -o CMakeFiles/Lab2.dir/src/main.cpp.s

CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/src/mesh/mesh.cpp
CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o -MF CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o.d -o CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/mesh/mesh.cpp"

CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/mesh/mesh.cpp" > CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.i

CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/mesh/mesh.cpp" -o CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.s

CMakeFiles/Lab2.dir/src/utils/utils.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/src/utils/utils.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/src/utils/utils.cpp
CMakeFiles/Lab2.dir/src/utils/utils.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Lab2.dir/src/utils/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/src/utils/utils.cpp.o -MF CMakeFiles/Lab2.dir/src/utils/utils.cpp.o.d -o CMakeFiles/Lab2.dir/src/utils/utils.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/utils/utils.cpp"

CMakeFiles/Lab2.dir/src/utils/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/src/utils/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/utils/utils.cpp" > CMakeFiles/Lab2.dir/src/utils/utils.cpp.i

CMakeFiles/Lab2.dir/src/utils/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/src/utils/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/utils/utils.cpp" -o CMakeFiles/Lab2.dir/src/utils/utils.cpp.s

CMakeFiles/Lab2.dir/src/camera/camera.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/src/camera/camera.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/src/camera/camera.cpp
CMakeFiles/Lab2.dir/src/camera/camera.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Lab2.dir/src/camera/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/src/camera/camera.cpp.o -MF CMakeFiles/Lab2.dir/src/camera/camera.cpp.o.d -o CMakeFiles/Lab2.dir/src/camera/camera.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/camera/camera.cpp"

CMakeFiles/Lab2.dir/src/camera/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/src/camera/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/camera/camera.cpp" > CMakeFiles/Lab2.dir/src/camera/camera.cpp.i

CMakeFiles/Lab2.dir/src/camera/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/src/camera/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/src/camera/camera.cpp" -o CMakeFiles/Lab2.dir/src/camera/camera.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui_impl_glfw.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_glfw.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_glfw.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_glfw.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui_impl_opengl3.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_opengl3.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_opengl3.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_impl_opengl3.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui_demo.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_demo.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_demo.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_demo.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui_draw.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_draw.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_draw.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_draw.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.s

CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/depends/imgui/imgui_widgets.cpp
CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/Lab2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o -MF CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_widgets.cpp"

CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_widgets.cpp" > CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.i

CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/depends/imgui/imgui_widgets.cpp" -o CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.s

# Object files for target Lab2
Lab2_OBJECTS = \
"CMakeFiles/Lab2.dir/src/main.cpp.o" \
"CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o" \
"CMakeFiles/Lab2.dir/src/utils/utils.cpp.o" \
"CMakeFiles/Lab2.dir/src/camera/camera.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o" \
"CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o"

# External object files for target Lab2
Lab2_EXTERNAL_OBJECTS =

/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/src/main.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/src/mesh/mesh.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/src/utils/utils.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/src/camera/camera.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_glfw.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui_impl_opengl3.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui_demo.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui_draw.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/depends/imgui/imgui_widgets.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/build.make
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: /usr/lib/x86_64-linux-gnu/libGL.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: /usr/lib/x86_64-linux-gnu/libGLEW.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2: CMakeFiles/Lab2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable \"/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/Lab2\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab2.dir/build: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab2/Lab2
.PHONY : CMakeFiles/Lab2.dir/build

CMakeFiles/Lab2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab2.dir/clean

CMakeFiles/Lab2.dir/depend:
	cd "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab2/build/CMakeFiles/Lab2.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Lab2.dir/depend

