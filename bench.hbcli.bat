@echo OFF

REM # added to https://github.com/umanglaamd/hbcli
REM # handbrake benchmarking
REM # usman.mangla@amd.com
REM # 2020.01	Rev 0.91
REM
REM # install handbrake and handbrakeCLI  https://handbrake.fr/downloads.php 
REM
REM # ensure both exe files are in the following directory:
set BINDIR=C:\Program Files\HandBrake\
set BIN="%BINDIR%handbrakeCLI.exe"

REM # Sample 4K video
REM # dearborn_st_bridge_4k.mp4 https://www.dropbox.com/sh/6yy8szr1b97s7by/AABf-Sof08gPd41WhJvmCPY4a?dl=0
REM # BigBuckBunny4K60.mp4, bbb_sunflower_2160p_60fps_normal.mp4  https://download.blender.org/demo/movies/BBB/
REM # ensure batch file and video files are in the following directory:
cd c:\video
set videofile="dearborn_st_bridge_4k.mp4"
REM set videofile="BigBuckBunny4K60.mp4"

REM # To run full benchmark and capture output: bench.hbcli.bat > output.log
REM # Once complete there should be 16 additional mp4 files and output.log file

REM set preset=Very Fast 1080p30
REM set preset=Fast 1080p30
REM set preset=HQ 1080p30 Surround
REM set preset=Super HQ 1080p30 Surround
REM 
REM set preset2=VF
REM set preset2=FS
REM set preset2=HQ
REM set preset2=SQ
REM 
REM set encoder=x264
REM set encoder=x265
REM set encoder=vce_h264
REM set encoder=vce_h265

echo ##############################################################################################
echo ################################## STRESS CPU START %TIME% ###################################

REM encode using x264 on cpu using 4 presets							# CPU h264 #

set encoder=x264
set preset=Very Fast 1080p30
set preset2=VF
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Fast 1080p30
set preset2=FS
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=HQ 1080p30 Surround
set preset2="HQ"
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Super HQ 1080p30 Surround
set preset2=SQ
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 


REM encode using x265 on cpu using 4 presets							# CPU h265 #
set encoder=x265
set preset=Very Fast 1080p30
set preset2=VF
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Fast 1080p30
set preset2=FS
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=HQ 1080p30 Surround
set preset2="HQ"
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Super HQ 1080p30 Surround
set preset2=SQ
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

echo ################################## STRESS CPU STOP %TIME% ####################################
echo ##############################################################################################

timeout 5

echo ##############################################################################################
echo ################################## STRESS GPU START %TIME% ###################################

REM encode using vce_h264 on gpu using 4 presets						# GPU h264 #

set encoder=vce_h264
set preset=Very Fast 1080p30
set preset2=VF
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Fast 1080p30
set preset2=FS
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=HQ 1080p30 Surround
set preset2=HQ
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Super HQ 1080p30 Surround
set preset2=SQ
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 


REM encode using vce_h265 on gpu using 4 presets							# GPU h265 #
set encoder=vce_h265
set preset=Very Fast 1080p30
set preset2=VF
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Fast 1080p30
set preset2=FS
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=HQ 1080p30 Surround
set preset2="HQ"
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 

set preset=Super HQ 1080p30 Surround
set preset2=SQ
set inputfile=%videofile%
set outputfile="%encoder%.%preset2%.%inputfile%"

echo ###############################################
echo Encoding %inputfile% to %outputfile%, preset = %preset%, encoder = %encoder%
REM timeout 3
echo ############## Start time %TIME% ############## 
%BIN% -i %inputfile% -o %outputfile% -e %encoder% -Z "%preset%"
echo ##############  End  time %TIME% ############## 


echo ################################## STRESS GPU STOP %TIME% ####################################
echo ##############################################################################################



