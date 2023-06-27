@echo off
title Latihan Menu 
:setting
color b5
cls 
echo ----------------------------------
echo         LATIHAN MENU
echo ----------------------------------
echo     [1} paket1 (ayam + es teh) 50.000
echo     [2] paket2 (ayam bakar + teh angget) 75.000
echo     [3] paket3 (ayam goreng krispy) 80.000
echo     [4] paket4 (gurame + cumi) 125.000
echo     [5] paket5 (gurame + seafood) 250.000
echo     [6] keluar
echo.
set /p "pilihmenu=Pillihan Menu Masakan:"

if %pilihan% == 1 (
geto 1
)else if %pilihan% == 2 (
geto 2 
)else if %pilihan% == 3 (
geto 3
if %pilihan% == 4 (
geto 4
)else if %pilihan% == 5 (
geto 5 
)else if %pilihan% ==  6(
goto 6

:1

cls
echo nama paket : paket1 
echo Harga : 50.000
echo keuntungan : ayam + es teh
pause
goto begin 

:2
cls
echo nama paket : paket2
echo Harga : 75.000
echo keuntungan : ayam bakar + teh anget
pause
goto begin

:3
cls
echo nama paket : paket3 
echo Harga : 80.000
echo keuntungan : ayam goreng krispy
pause
goto begin

:4
cls
echo nama paket : paket4
echo Harga : 125.000
echo keuntungan : gurame + cumi 
pause
goto begin

:5
cls
echo nama paket : paket5
echo Harga : 250.000
echo keuntungan : gurame + seafood
pause
goto begin

:6
exit
