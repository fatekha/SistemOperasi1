@echo off
:begin
cls
echo Menu Program:
echo 1. Hello
echo 2. Sistem Info
echo 3. Exit 
echo 4. ddd
set /p pilihan=Pilihan Menu Anda:

if %pilihan% == 1 (
geto 1
)else if %pilihan% == 2 (
geto 2 
)else if %pilihan% == 3 (
geto 3
)

:1
cls
echo =========================================
echo 	SELAMAT DATANG DI HALAMAN UTAMA 
echo =========================================
echo Hi, Selamat Pagi
pause
goto begin

:2
cls
sisteminfo
pause
goto begin

:3
exit
