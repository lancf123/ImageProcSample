@SET OPENCV_DLL_PATH=C:\OpenCV\opencv\cmake_build\install\x86\mingw\bin
@SET OPENCV_IMAGE_TOOL=C:\OpenCV\mywork\ImageTools\Release
@SET PATH=%PATH%;%OPENCV_DLL_PATH%;%OPENCV_IMAGE_TOOL%;.\bin;

@REM
@REM    (0, 0)        (width, 0)
@REM     ___________________
@REM     |                  |
@REM     |                  |
@REM     |                  |
@REM     |                  |
@REM     --------------------
@REM    (0, heigth)   (width, height)   

@REM                                                                                                [left top] [right, top] [left bottom]  [right bottom]
@REM                                                                                                -----------------------------------------------------
@REM                                                                                                   «   «      «   «      «    «           «      «
@REM                                                                                                   x   y      x   y      x    y           x      y
@REM ImageTools.exe --warp "src filename" "save filename"  (background color; 0->black; 255->white)   (0,  0)   (width, 0)  (0, heigth)    (width, height)
@REM ImageTools.exe --warp "a01_sample.png" "a01_sample_01.png" 255   0 0    1 0    0 1    1 1  (no warp)

ImageTools.exe --warp "a01_sample.png" "a01_sample_00.png" 255   0 0        1 0        0 1       1 1
ImageTools.exe --warp "a01_sample.png" "a01_sample_01.png" 255   0 0        1 0.4      0 0.6     1 1 
ImageTools.exe --warp "a01_sample.png" "a01_sample_02.png" 255   0 0        1 0.5      0 1       1 0.5
ImageTools.exe --warp "a01_sample.png" "a01_sample_03.png" 255   0 0        1.5 -0.5   0 1       1 0.5
ImageTools.exe --warp "a01_sample.png" "a01_sample_04.png" 255   0 0        0.4 0      0 1       0.4 1
ImageTools.exe --warp "a01_sample.png" "a01_sample_05.png" 255   0 0        1 0        0 0.4     1 0.4
ImageTools.exe --warp "a01_sample.png" "a01_sample_06.png" 255   -0.5 -0.4  1 -0.5     0 0.6     1.8 1.5
ImageTools.exe --warp "a01_sample.png" "a01_sample_07.png" 255   0.4 0      0.6 0.3    -0.5 1.2  0.7 1.1
ImageTools.exe --warp "a01_sample.png" "a01_sample_08.png" 255   0.3 -0.1   0.7 -0.1   -1.2 1    1.1 1

@PAUSE
