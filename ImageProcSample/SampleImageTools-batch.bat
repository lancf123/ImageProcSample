@SET OPENCV_DLL_PATH=C:\OpenCV\opencv\cmake_build\install\x86\mingw\bin
@SET OPENCV_IMAGE_TOOL=C:\OpenCV\mywork\ImageTools\Release
@SET CURRENT_PATH=%~dp0
@SET PATH=%PATH%;%OPENCV_DLL_PATH%;%OPENCV_IMAGE_TOOL%;%CURRENT_PATH%\bin\;

@REM                           src folder                        dist folder                           ext list

ImageTools.exe  --warp -batch "C:\OpenCV\ImageProcSample\image" "C:\OpenCV\ImageProcSample\distImage" "png|jpg"

@ECHO.
@ECHO Completed!
