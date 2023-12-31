@echo off
title Kartu Hasil Studi

rem =====Setting Variabel identitas=====
set /p NIM=Masukan NIM  :
set /p Nama=Masukan Nama Lengkap :
set /p Kelas=Masukan Kelas :
set /p Prodi=Masukan Prodi :

rem ====== Setting Variabel nilai ======
echo -----------------------------------
set /p bhs_indo=Nilai Bahasa Indonesia :
set /p bhs_ing=Nilai Bahasa Inggris    :
set /p pd=Nilai Pemrograman Dasar      :
set /p mtk=Nilai Matematika            :
set /p kal1=Nilai Kalkulus1            :
set /p so=Nilai Sistem Operasi         :

rem ============Perhitungan=============
set /a rata=(bhs_indo + bhs_ing + pd + mtk + kal1 + so) / 6

if %rata% GEQ 0 if %rata% LEQ 60 (
    set grade_rata=C
) else if %rata% GEQ 60 if %rata% LEQ 75 (
    set grade_rata=B
) else if %rata% GEQ 75 if %rata% LEQ 85 (
    set grade_rata=AB
) else if %rata% GEQ 85 if %rata% LEQ 100 (
    set grade_rata=A
) else (
    set grade_rata=Grade Anda Tidak Ditemukan!
)
rem ========grade tiap matkul===========

if %bhs_indo% GEQ 0 if %bhs_indo% LEQ 60 (
    set grade_indo=C
) else if %bhs_indo% GEQ 60 if %bhs_indo% LEQ 75 (
    set grade_indo=B
) else if %bhs_indo% GEQ 75 if %bhs_indo% LEQ 85 (
    set grade_indo=AB
) else if %bhs_indo% GEQ 85 if %bhs_indo% LEQ 100 (
    set grade_indo=A
) else (
    set grade_indo=Grade Anda Tidak Ditemukan!
)

if %bhs_ing% GEQ 0 if %bhs_ing% LEQ 60 (
    set grade_ing=C
) else if %bhs_ing% GEQ 60 if %bhs_ing% LEQ 75 (
    set grade_ing=B
) else if %bhs_ing% GEQ 75 if %bhs_ing% LEQ 85 (
    set grade_ing=AB
) else if %bhs_ing% GEQ 85 if %bhs_ing% LEQ 100 (
    set grade_ing=A
) else (
    set grade_ing=Grade Anda Tidak Ditemukan!
)

if %pd% GEQ 0 if %pd% LEQ 60 (
    set grade_pd=C
) else if %pd% GEQ 60 if %pd% LEQ 75 (
    set grade_pd=B
) else if %pd% GEQ 75 if %pd% LEQ 85 (
    set grade_pd=AB
) else if %pd% GEQ 85 if %pd% LEQ 100 (
    set grade_pd=A
) else (
    set grade_pd=Grade Anda Tidak Ditemukan!
)

if %mtk% GEQ 0 if %mtk% LEQ 60 (
    set grade_mtk=C
) else if %mtk% GEQ 60 if %mtk% LEQ 75 (
    set grade_mtk=B
) else if %mtk% GEQ 75 if %mtk% LEQ 85 (
    set grade_mtk=AB
) else if %mtk% GEQ 85 if %mtk% LEQ 100 (
    set grade_mtk=A
) else (
    set grade_mtk=Grade Anda Tidak Ditemukan!
)

if %kal1% GEQ 0 if %kal1% LEQ 60 (
    set grade_kal1=C
) else if %kal1% GEQ 60 if %kal1% LEQ 75 (
    set grade_kal1=B
) else if %kal1% GEQ 75 if %kal1% LEQ 85 (
    set grade_kal1=AB
) else if %kal1% GEQ 85 if %kal1% LEQ 100 (
    set grade_kal1=A
) else (
    set grade_kal1=Grade Anda Tidak Ditemukan!
)

if %so% GEQ 0 if %so% LEQ 60 (
    set grade_so=C
) else if %so% GEQ 60 if %so% LEQ 75 (
    set grade_so=B
) else if %so% GEQ 75 if %so% LEQ 85 (
    set grade_so=AB
) else if %so% GEQ 85 if %so% LEQ 100 (
    set grade_so=A
) else (
    set grade_so=Grade Anda Tidak Ditemukan!
)

rem ============Output=============
echo ----------------------------------- 
echo          Kartu Hasil Studi         
echo    Universitas Selamat Sri Batang 
echo -----------------------------------
echo NIM             : %NIM% 
echo Nama Lengkap    : %Nama% 
echo Kelas           : %Kelas% 
echo Program studi   : %Prodi% 
echo ----------------------------------- 
echo No  Nama Matkul       Nilai  Grade 
echo ----------------------------------- 
echo 1.  Bahasa Indonesia  : %bhs_indo%, %grade_indo% 
echo 2.  Bahasa Inggris    : %bhs_ing%, %grade_ing% 
echo 3.  Pemrograman Dasar : %pd%, %grade_pd% 
echo 4.  Matematika        : %mtk%, %grade_mtk% 
echo 5.  Kalkulus1         : %kal1%, %grade_kal1% 
echo 6.  Sistem Operasi    : %so%, %grade_so% 
echo ------------------------------------ 
echo Rata-rata           : %rata% 
echo Kategori            : %grade_rata% 
echo ----------------------------------- 

rem ============Output=============
echo ----------------------------------- >>putri.txt
echo          Kartu Hasil Studi         >>putri.txt
echo    Universitas Selamat Sri Batang >>putri.txt
echo ----------------------------------->>putri.txt
echo NIM             : %NIM% >>putri.txt
echo Nama Lengkap    : %Nama% >>putri.txt
echo Kelas           : %Kelas% >>putri.txt
echo Program studi   : %Prodi% >>putri.txt
echo ----------------------------------- >>putri.txt
echo No  Nama Matkul       Nilai  Grade >>putri.txt
echo ----------------------------------- >>putri.txt
echo 1.  Bahasa Indonesia  : %bhs_indo%, %grade_indo% >>putri.txt
echo 2.  Bahasa Inggris    : %bhs_ing%, %grade_ing% >>putri.txt
echo 3.  Pemrograman Dasar : %pd%, %grade_pd% >>putri.txt
echo 4.  Matematika        : %mtk%, %grade_mtk% >>putri.txt
echo 5.  Kalkulus1         : %kal1%, %grade_kal1% >>putri.txt
echo 6.  Sistem Operasi    : %so%, %grade_so% >>putri.txt
echo ------------------------------------ >>putri.txt
echo Rata-rata           : %rata% >>putri.txt
echo Kategori            : %grade_rata% >>putri.txt
echo ----------------------------------- >>putri.txt
pause>nul
