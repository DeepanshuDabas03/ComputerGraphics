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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build"

# Include any dependencies generated for this target.
include CMakeFiles/lab6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab6.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab6.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab6.dir/flags.make

CMakeFiles/lab6.dir/main.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/main.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/main.cpp
CMakeFiles/lab6.dir/main.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab6.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/main.cpp.o -MF CMakeFiles/lab6.dir/main.cpp.o.d -o CMakeFiles/lab6.dir/main.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/main.cpp"

CMakeFiles/lab6.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/main.cpp" > CMakeFiles/lab6.dir/main.cpp.i

CMakeFiles/lab6.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/main.cpp" -o CMakeFiles/lab6.dir/main.cpp.s

CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui_impl_glfw.cpp
CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_glfw.cpp"

CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_glfw.cpp" > CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_glfw.cpp" -o CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui_impl_opengl3.cpp
CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_opengl3.cpp"

CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_opengl3.cpp" > CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_impl_opengl3.cpp" -o CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/lab6.dir/imgui/imgui.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui.cpp
CMakeFiles/lab6.dir/imgui/imgui.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui.cpp"

CMakeFiles/lab6.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui.cpp" > CMakeFiles/lab6.dir/imgui/imgui.cpp.i

CMakeFiles/lab6.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui.cpp" -o CMakeFiles/lab6.dir/imgui/imgui.cpp.s

CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui_demo.cpp
CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_demo.cpp"

CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_demo.cpp" > CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.i

CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_demo.cpp" -o CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.s

CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui_draw.cpp
CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_draw.cpp"

CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_draw.cpp" > CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.i

CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_draw.cpp" -o CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.s

CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/lab6.dir/flags.make
CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/imgui/imgui_widgets.cpp
CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/lab6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o -c "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_widgets.cpp"

CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_widgets.cpp" > CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/imgui/imgui_widgets.cpp" -o CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.s

# Object files for target lab6
lab6_OBJECTS = \
"CMakeFiles/lab6.dir/main.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o"

# External object files for target lab6
lab6_EXTERNAL_OBJECTS =

/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/main.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui_impl_glfw.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui_impl_opengl3.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui_demo.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui_draw.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/imgui/imgui_widgets.cpp.o
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/build.make
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: /usr/lib/x86_64-linux-gnu/libOpenGL.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: /usr/lib/x86_64-linux-gnu/libGLX.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: /usr/lib/x86_64-linux-gnu/libGLEW.so
/home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6: CMakeFiles/lab6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable \"/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/lab6\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab6.dir/build: /home/deepanshu-dabas/Documents/Computer\ Graphics/Labs/lab6/lab6/lab6
.PHONY : CMakeFiles/lab6.dir/build

CMakeFiles/lab6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab6.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab6.dir/clean

CMakeFiles/lab6.dir/depend:
	cd "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build" "/home/deepanshu-dabas/Documents/Computer Graphics/Labs/lab6/lab6/build/CMakeFiles/lab6.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/lab6.dir/depend

