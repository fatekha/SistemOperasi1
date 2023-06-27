@echo off
title setting My Komputer
:setting
color b5
cls 
echo ----------------------------------
echo     SETTING KOMPUTER
echo ----------------------------------
echo     [1} Setting keyboard
echo     [2] setting laguage
echo     [3] Setting Data
echo     [4] Add user 
echo     [5] Sound Control
echo     [6] Open Starup
echo     [7] chrome
echo     [88] Kembali       [0] keluar
echo.
set /p "pilihmenu=Masukkan Pillihan Menu:"
if %pilihmenu%==1  goto keyboard
if %pilihmenu%==2  goto Laguage
if %pilihmenu%==3  goto Data 
if %pilihmenu%==4  goto User
if %pilihmenu%==5  goto sound
if %pilihmenu%==6  goto startup
if %pilihmenu%==7  goto chrome
if %pilihmenu%==88 goto back
if %pilihmenu%==0  goto exit

:keyboard
cls
start control keyboard
goto setting
pause
:Laguage
cls
start intl.cpl
goto setting 
pause
:Data
cls
start timedate.cpl
goto setting 
:User
cls
start Netplwiz.exe
goto setting
pause
:sound
cls
start Sndvol.exe
goto setting 
pause
:startup
start msconfig
goto setting
pause
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
:back
goto setting
:exit
exit
