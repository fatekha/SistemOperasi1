@echo off 
title latihan 5 perhitungan luas segitiga 
rem=================setting variabel=================
echo ------------------------------------------------
echo  INPUTAN NILAI ALAS DAN TINGGI
echo ------------------------------------------------
set /p alas=masukkan nilai alas :
set /p tinggi=masukkan nilai tinggi :
    
rem================seting perhitungan================
set /a luas=alas*tinggi/2
 
if %luas% GEQ 500 (
   set grade=kategori besar
) else if %luas% GEQ 100 (
   set grade=kategori sedang
)else(
   set grade=kategori kecil
)
      
cls
rem======================output======================
echo ------------------------------------------------
echo  PERHITUNGAN LUAS SEGITIGA
echo ------------------------------------------------
echo alas  : %alas% 
echo tinggi : %tinggi%
echo ------------------------------------------------
echo  luas segitiga tersebut adalah : %luas%
echo kategori bangunanya adalah : %grade%
pause
