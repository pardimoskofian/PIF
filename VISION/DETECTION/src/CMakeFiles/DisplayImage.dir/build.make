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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src

# Include any dependencies generated for this target.
include CMakeFiles/DisplayImage.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DisplayImage.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DisplayImage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DisplayImage.dir/flags.make

CMakeFiles/DisplayImage.dir/InitScript.cpp.o: CMakeFiles/DisplayImage.dir/flags.make
CMakeFiles/DisplayImage.dir/InitScript.cpp.o: InitScript.cpp
CMakeFiles/DisplayImage.dir/InitScript.cpp.o: CMakeFiles/DisplayImage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DisplayImage.dir/InitScript.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DisplayImage.dir/InitScript.cpp.o -MF CMakeFiles/DisplayImage.dir/InitScript.cpp.o.d -o CMakeFiles/DisplayImage.dir/InitScript.cpp.o -c /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/InitScript.cpp

CMakeFiles/DisplayImage.dir/InitScript.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DisplayImage.dir/InitScript.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/InitScript.cpp > CMakeFiles/DisplayImage.dir/InitScript.cpp.i

CMakeFiles/DisplayImage.dir/InitScript.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DisplayImage.dir/InitScript.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/InitScript.cpp -o CMakeFiles/DisplayImage.dir/InitScript.cpp.s

# Object files for target DisplayImage
DisplayImage_OBJECTS = \
"CMakeFiles/DisplayImage.dir/InitScript.cpp.o"

# External object files for target DisplayImage
DisplayImage_EXTERNAL_OBJECTS =

DisplayImage: CMakeFiles/DisplayImage.dir/InitScript.cpp.o
DisplayImage: CMakeFiles/DisplayImage.dir/build.make
DisplayImage: /usr/lib64/libopencv_gapi.so.4.7.0
DisplayImage: /usr/lib64/libopencv_stitching.so.4.7.0
DisplayImage: /usr/lib64/libopencv_alphamat.so.4.7.0
DisplayImage: /usr/lib64/libopencv_aruco.so.4.7.0
DisplayImage: /usr/lib64/libopencv_barcode.so.4.7.0
DisplayImage: /usr/lib64/libopencv_bgsegm.so.4.7.0
DisplayImage: /usr/lib64/libopencv_bioinspired.so.4.7.0
DisplayImage: /usr/lib64/libopencv_ccalib.so.4.7.0
DisplayImage: /usr/lib64/libopencv_cvv.so.4.7.0
DisplayImage: /usr/lib64/libopencv_dnn_objdetect.so.4.7.0
DisplayImage: /usr/lib64/libopencv_dnn_superres.so.4.7.0
DisplayImage: /usr/lib64/libopencv_dpm.so.4.7.0
DisplayImage: /usr/lib64/libopencv_face.so.4.7.0
DisplayImage: /usr/lib64/libopencv_freetype.so.4.7.0
DisplayImage: /usr/lib64/libopencv_fuzzy.so.4.7.0
DisplayImage: /usr/lib64/libopencv_hdf.so.4.7.0
DisplayImage: /usr/lib64/libopencv_hfs.so.4.7.0
DisplayImage: /usr/lib64/libopencv_img_hash.so.4.7.0
DisplayImage: /usr/lib64/libopencv_intensity_transform.so.4.7.0
DisplayImage: /usr/lib64/libopencv_line_descriptor.so.4.7.0
DisplayImage: /usr/lib64/libopencv_mcc.so.4.7.0
DisplayImage: /usr/lib64/libopencv_quality.so.4.7.0
DisplayImage: /usr/lib64/libopencv_rapid.so.4.7.0
DisplayImage: /usr/lib64/libopencv_reg.so.4.7.0
DisplayImage: /usr/lib64/libopencv_rgbd.so.4.7.0
DisplayImage: /usr/lib64/libopencv_saliency.so.4.7.0
DisplayImage: /usr/lib64/libopencv_shape.so.4.7.0
DisplayImage: /usr/lib64/libopencv_stereo.so.4.7.0
DisplayImage: /usr/lib64/libopencv_structured_light.so.4.7.0
DisplayImage: /usr/lib64/libopencv_superres.so.4.7.0
DisplayImage: /usr/lib64/libopencv_surface_matching.so.4.7.0
DisplayImage: /usr/lib64/libopencv_tracking.so.4.7.0
DisplayImage: /usr/lib64/libopencv_videostab.so.4.7.0
DisplayImage: /usr/lib64/libopencv_viz.so.4.7.0
DisplayImage: /usr/lib64/libopencv_wechat_qrcode.so.4.7.0
DisplayImage: /usr/lib64/libopencv_xobjdetect.so.4.7.0
DisplayImage: /usr/lib64/libopencv_xphoto.so.4.7.0
DisplayImage: /usr/lib64/libopencv_highgui.so.4.7.0
DisplayImage: /usr/lib64/libopencv_datasets.so.4.7.0
DisplayImage: /usr/lib64/libopencv_plot.so.4.7.0
DisplayImage: /usr/lib64/libopencv_text.so.4.7.0
DisplayImage: /usr/lib64/libopencv_ml.so.4.7.0
DisplayImage: /usr/lib64/libopencv_phase_unwrapping.so.4.7.0
DisplayImage: /usr/lib64/libopencv_optflow.so.4.7.0
DisplayImage: /usr/lib64/libopencv_ximgproc.so.4.7.0
DisplayImage: /usr/lib64/libopencv_video.so.4.7.0
DisplayImage: /usr/lib64/libopencv_videoio.so.4.7.0
DisplayImage: /usr/lib64/libopencv_imgcodecs.so.4.7.0
DisplayImage: /usr/lib64/libopencv_objdetect.so.4.7.0
DisplayImage: /usr/lib64/libopencv_calib3d.so.4.7.0
DisplayImage: /usr/lib64/libopencv_dnn.so.4.7.0
DisplayImage: /usr/lib64/libopencv_features2d.so.4.7.0
DisplayImage: /usr/lib64/libopencv_flann.so.4.7.0
DisplayImage: /usr/lib64/libopencv_photo.so.4.7.0
DisplayImage: /usr/lib64/libopencv_imgproc.so.4.7.0
DisplayImage: /usr/lib64/libopencv_core.so.4.7.0
DisplayImage: CMakeFiles/DisplayImage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DisplayImage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DisplayImage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DisplayImage.dir/build: DisplayImage
.PHONY : CMakeFiles/DisplayImage.dir/build

CMakeFiles/DisplayImage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DisplayImage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DisplayImage.dir/clean

CMakeFiles/DisplayImage.dir/depend:
	cd /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src /home/pacem/Documents/INGE/PROJET/PIF/VISION/DETECTION/src/CMakeFiles/DisplayImage.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/DisplayImage.dir/depend

