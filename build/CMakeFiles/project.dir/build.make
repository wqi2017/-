# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wangqi/Desktop/Play-a-bomb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wangqi/Desktop/Play-a-bomb/build

# Include any dependencies generated for this target.
include CMakeFiles/project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project.dir/flags.make

CMakeFiles/project.dir/main.cpp.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangqi/Desktop/Play-a-bomb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project.dir/main.cpp.o -c /home/wangqi/Desktop/Play-a-bomb/main.cpp

CMakeFiles/project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangqi/Desktop/Play-a-bomb/main.cpp > CMakeFiles/project.dir/main.cpp.i

CMakeFiles/project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangqi/Desktop/Play-a-bomb/main.cpp -o CMakeFiles/project.dir/main.cpp.s

# Object files for target project
project_OBJECTS = \
"CMakeFiles/project.dir/main.cpp.o"

# External object files for target project
project_EXTERNAL_OBJECTS =

project: CMakeFiles/project.dir/main.cpp.o
project: CMakeFiles/project.dir/build.make
project: /usr/local/lib/libopencv_videostab.so.3.0.0
project: /usr/local/lib/libopencv_superres.so.3.0.0
project: /usr/local/lib/libopencv_stitching.so.3.0.0
project: /usr/local/lib/libopencv_shape.so.3.0.0
project: /usr/local/lib/libopencv_photo.so.3.0.0
project: /usr/local/lib/libopencv_hal.a
project: /usr/local/lib/libopencv_cudastereo.so.3.0.0
project: /usr/local/lib/libopencv_cudaoptflow.so.3.0.0
project: /usr/local/lib/libopencv_cudaobjdetect.so.3.0.0
project: /usr/local/lib/libopencv_cudalegacy.so.3.0.0
project: /usr/local/lib/libopencv_cudaimgproc.so.3.0.0
project: /usr/local/lib/libopencv_cudafeatures2d.so.3.0.0
project: /usr/local/lib/libopencv_cudacodec.so.3.0.0
project: /usr/local/lib/libopencv_cudabgsegm.so.3.0.0
project: /usr/local/lib/libopencv_calib3d.so.3.0.0
project: /usr/local/lib/libopencv_cudawarping.so.3.0.0
project: /usr/local/lib/libopencv_objdetect.so.3.0.0
project: /usr/local/lib/libopencv_cudafilters.so.3.0.0
project: /usr/local/lib/libopencv_cudaarithm.so.3.0.0
project: /usr/local/lib/libopencv_features2d.so.3.0.0
project: /usr/local/lib/libopencv_ml.so.3.0.0
project: /usr/local/lib/libopencv_highgui.so.3.0.0
project: /usr/local/lib/libopencv_videoio.so.3.0.0
project: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
project: /usr/local/lib/libopencv_flann.so.3.0.0
project: /usr/local/lib/libopencv_video.so.3.0.0
project: /usr/local/lib/libopencv_imgproc.so.3.0.0
project: /usr/local/lib/libopencv_core.so.3.0.0
project: /usr/local/lib/libopencv_cudev.so.3.0.0
project: /usr/local/lib/libopencv_hal.a
project: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
project: CMakeFiles/project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wangqi/Desktop/Play-a-bomb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project.dir/build: project

.PHONY : CMakeFiles/project.dir/build

CMakeFiles/project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project.dir/clean

CMakeFiles/project.dir/depend:
	cd /home/wangqi/Desktop/Play-a-bomb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangqi/Desktop/Play-a-bomb /home/wangqi/Desktop/Play-a-bomb /home/wangqi/Desktop/Play-a-bomb/build /home/wangqi/Desktop/Play-a-bomb/build /home/wangqi/Desktop/Play-a-bomb/build/CMakeFiles/project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project.dir/depend
