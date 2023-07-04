@echo off
:menu
cls
echo --------------------------------
echo   Menu Aplikasi:
echo --------------------------------
echo 1. Word
echo 2. Excel
echo 3. PowerPoint
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
