@echo off
title Menu Aplikasi dan Jaringan 
:menu
cls
echo ----------------------------------
echo              Menu Aplikasi:
echo ----------------------------------
echo    [1.] Word
echo    [2.] Excel
echo    [3.] PowerPoint
echo.

set /p aplikasi=Pilih aplikasi anda: 

if %aplikasi%==1 (
    start winword
) else if %aplikasi%==2 (
    start excel
) else if %aplikasi%==3 (
    start powerpnt
) else (
    echo Pilihan tidak valid.
    pause
    goto menu
)

:jaringan
cls
echo ----------------------------------
echo                Menu Jaringan:
echo ----------------------------------
echo         [1.] Cek IP
echo         [2.] Ping domain
echo         [3.] Setting Connection
echo         [4.] Registry
echo         [5.] Diagnostic Tool
echo.

set /p jaringan=Pilih menu jaringan anda: 

if %jaringan%==1 (
    ipconfig
) else if %jaringan%==2 (
    set /p domain="Masukkan nama domain yang akan diping: "
    ping %domain%
) else if %jaringan%==3 (
    start ncpa.cpl
) else if %jaringan%==4 (
    start regedit
) else if %jaringan%==5 (
    start msdt.exe /id NetworkDiagnosticsNetworkAdapter
) else (
    echo Pilihan tidak valid.
    pause
    goto jaringan
)

pause
