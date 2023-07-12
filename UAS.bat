@echo off
color 7
:login
cls
title Login User
echo ********************************************************************
echo                                  LOGIN USER 
echo ********************************************************************
echo.
echo --------------------------------------------------------------------
set /p name=  User:
set /p password= password:
if %password% == teha (
 goto utama
) else (
echo password salah
set /p x = enter.....!!!
goto login
)
pause
:Utama
cls
title Menu Utama
echo ----------------------------------
echo                Menu Utama
echo ----------------------------------
echo         [1.] Akademik
echo         [2.] Aplikasi
echo         [3.] Jaringan
echo         [4.] Setting
echo         [5.] Exit
echo.
set /p pilihlah=Pilihlah Menu Utama:
if %pilihlah%==1 goto Akademik
if %pilihlah%==2 goto Aplikasi
if %pilihlah%==3 goto Jaringan
if %pilihlah%==4 goto Setting 
if %pilihlah%==5 goto login 
pause>nul

:Akademik
cls
title Menu Akademik
echo ----------------------------------
echo                Menu Akademik
echo ----------------------------------
echo         [1.] Perhitungan
echo         [2.] KHS
echo         [3.] Jadwal Kuliah
echo         [4.] Data Mahasiswa
echo         [5.] Exit
echo.
set /p pilihlah=Pilihlah Menu Akademik:
if %pilihlah%==1 goto Perhitungan
if %pilihlah%==2 goto KHS 
if %pilihlah%==3 goto Jadwal
if %pilihlah%==4 goto Data
if %pilihlah%==5 goto Utama
pause>nul

:Perhitungan
cls
title Perhitungan 
set /p a=Masukkan Nilai a :
set /p b=Masukkan Nilai b :
set /p c=Masukkan Nilai c :

rem Menghitung (a*b)^2+(b-c)^2/(a-c)

set /a hasil=((a*b)(a*b)+(b-c)(b-c))/(a-c)

echo -------------------HASIL-----------------------          
echo Hasil (%a%%b%)2+(%b%-%c%)*2/(%a%-%c%):%hasil%
echo -----------------------------------------------
pause
goto Akademik
pause

:KHS
cls
title Kartu Hasil Studi

rem =====Setting Variabel identitas=====
set /p NIM=Masukan NIM :
set /p Nama=Masukan Nama Lengkap :
set /p Kelas=Masukan Kelas :
set /p Prodi=Masukan Prodi :

rem ====== Setting Variabel nilai ======
echo -----------------------------------
set /p bhs_indo=Nilai Bahasa Indonesia 	:
set /p bhs_ing=Nilai Bahasa Inggris	:
set /p pd=Nilai Pemrograman Dasar	:
set /p mtk=Nilai Matematika	:
set /p kal1=Nilai Kalkulus1		:
set /p so=Nilai Sistem Operasi	:

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
goto Akademik

:Jadwal
cls
title jatwal Kuliah
Rem=======Matkul Hari Senin==========
set se1=         
set se2=         
set se3=Indonesia
set se4=Indonesia
set se5=Pancasila
set se6=Pancasila
set se7=Kalkulus2
set se8=Kalkulus2
set se9=Kalkulus2
Rem=======Matkul Hari Selasa==========
set la1=                
set la2=PAI           
set la3=PAI           
set la4=PAI           
set la5=              
set la6=              
set la7=Sistem Operasi
set la8=Sistem Operasi
set la9=              
Rem=======Matkul Hari Rabu==========
set ra1=         
set ra2=  K
set ra3=  O
set ra4=  S
set ra5=  O
set ra6=  N
set ra7=  G
set ra8=
set ra9=
Rem=======Matkul Hari Kamis==========
set ka1=   
set ka2=  K
set ka3=  O
set ka4=  S
set ka5=  O
set ka6=  N
set ka7=  G     
set ka8=           
set ka9=           
Rem=======Matkul Hari Jumat==========
set jum1=                    
set jum2=                    
set jum3=                    
set jum4=                    
set jum5=                    
set jum6=                    
set jum7=Komputer Grafis     
set jum8=Komputer Grafis     
set jum9=Komputer Grafis     
Rem=======Matkul Hari Sabtu==========
set sab1=             
set sab2=Struktur Data
set sab3=Struktur Data
set sab4=Struktur Data
set sab5=Algoritma    
set sab6=Algoritma    
set sab7=                   
set sab8=             
set sab9=             

rem====================Output====================
echo ---------------------------------------------------------------------------------------------------------------
echo                                           Matkul Hari TI2A
echo ---------------------------------------------------------------------------------------------------------------
echo No       Waktu    Senin     Selasa            Rabu Kamis        Jumat           Sabtu 
echo 1.   07.00-07.50  %se1%  %la1%  %ra1%  %ka1%  %jum1%  %sab1%
echo 2.   07.50-08.40  %se2%  %la2%  %ra2%  %ka2%  %jum2%  %sab2%
echo 3.   08.40-09.30  %se3%  %la3%  %ra3%  %ka3%  %jum3%  %sab3%
echo 4.   09.30-10.20  %se4%  %la4%  %ra4%  %ka4%  %jum4%  %sab4%
echo 5.   10.20-11.10  %se5%  %la5%  %ra5%  %ka5%  %jum5%  %sab5%
echo 6.   11.10-12.00  %se6%  %la6%  %ra6%  %ka6%  %jum6%  %sab6%
echo 7.   13.30-14.10  %se7%  %la7%  %ra7%  %ka7%  %jum7%  %sab7%
echo 8.   14.10-14.50  %se8%  %la8%  %ra8%  %ka8%  %jum8%  %sab8%
echo 9.   14.50-15.40  %se9%  %la9%  %ra9%  %ka9%  %jum9%  %sab9%
echo ----------------------------------------------------------------------------------------------------------------
pause>nul
goto Akademik

:Data
cls
title Kartu Hasil Studi
rem =====setting data identitas=====
set /p NIM=Masukan NIM  :
set /p Nama=Masukan Nama Lengkap :
set /p Kelas=Masukan Kelas :
set /p Prodi=Masukan Prodi :
set /p No_Wa=Masukkan NomerWa :
set /p Alamat=Masukkan Alamat : 
rem ==========output============
echo ----------------------------------- 
echo           Data Mahasiswa  
echo    Universitas Selamat Sri Batang 
echo -----------------------------------
echo  NIM             : %NIM%
echo  Nama Lengkap    : %Nama% 
echo  Kelas           : %Kelas% 
echo  Program studi   : %Prodi% 
echo  Nomer WhatsApp  : %No_Wa%
echo  Alamat          : %Alamat%
echo -----------------------------------
pause>nul
goto Utama



:Aplikasi 
cls
title Menu Aplikasi
echo ----------------------------------
echo                Menu Aplikasi
echo ----------------------------------
echo         [1.] Pengolah Kata
echo         [2.] Desain
echo         [3.] Browser
echo         [4.] Exit
echo.
set /p pilihlah=Pilihlah Menu Akademik:
if %pilihlah%==1 goto Pengolahan
if %pilihlah%==2 goto Desain
if %pilihlah%==3 goto Browser
if %pilihlah%==4 goto Utama
pause>nul
title Menu Aplikasi dan Jaringan 
:Pengolahan
cls
echo ----------------------------------
echo              Menu Pengolahan Kata:
echo ----------------------------------
echo    [1.] Word
echo    [2.] Excel
echo    [3.] PowerPoint
echo    [4.] Exit
echo.

set /p aplikasi=Pilih aplikasi anda: 

if %aplikasi%==1 (
    cls
    start winword
	goto Pengolahan
	pause
) else if %aplikasi%==2 (
    cls
    start excel
	goto Pengolahan
	pause
) else if %aplikasi%==3 (
    cls
    start powerpnt
	goto Pengolahan
	pause
)else if %aplikasi%==4 (
    cls
    goto Aplikasi
    pause
) else (
    echo Pilihan tidak valid.
    pause
    goto Pengolahan
)
pause
:Desain
cls
title Menu Aplikasi Desain
echo ----------------------------------
echo          Menu Aplikasi Desain:
echo ----------------------------------
echo       [1.] Canva
echo       [2.] Paint 3D
echo       [3.] Adobe Photoshop
echo       [4.] Exit
echo.

set /p desain=Pilih menu desain anda: 

if %desain%==1 (
    cls
    start https://www.canva.com
    goto desain
    pause
) else if %desain%==2 (
    cls
    start https://www.paint3D.com
    goto desain
    pause
) else if %desain%==3 (
    cls
    start Photoshop.exe  
    goto desain
    pause
) else if %desain%==4 (
    cls
    goto Aplikasi
    pause
) else (
    echo Pilihan tidak valid.
    pause
    goto desain
)
pause>nul

:Browser
title Menu Browser
cls
echo ----------------------------------
echo           Menu Browser:
echo ----------------------------------
echo      [1.] Chrome
echo      [2.] YouTube 
echo      [3.] Google
echo      [4.] Exit
echo.

set /p browser=Pilih menu browser Anda: 

if %browser%==1 (
    cls
    start chrome.exe www.google.com
    goto browser 
) else if %browser%==2 (
    cls
    start www.youtube.com
    goto browser 
) else if %browser%==3 (
    cls
    start www.google.com
    goto browser
    pause
) else if %browser%==4 (
    cls
    goto Aplikasi 
    pause
) else (
    echo Pilihan tidak valid.
    pause
    goto browser
)
pause>nul



:jaringan
title Menu Jaringan
cls
echo ----------------------------------
echo                Menu Jaringan:
echo ----------------------------------
echo         [1.] Cek IP
echo         [2.] Ping domain
echo         [3.] Setting Connection
echo         [4.] Registry
echo         [5.] Diagnostic Tool
echo         [6.] Exit
echo.

set /p jaringan=Pilih menu jaringan anda: 

if %jaringan%==1 (
    ipconfig
	pause
	goto jaringan
) else if %jaringan%==2 (
    start " my Server " ping 192.168.1.1 -t
    start " my PC " ping 192.168.1.1 -t 
	start " my Phone " ping 192.168.1.5 -t
	goto jaringan
) else if %jaringan%==3 (
    start ncpa.cpl
	goto jaringan
) else if %jaringan%==4 (
    start regedit
	goto jaringan
) else if %jaringan%==5 (
    start msdt.exe /id NetworkDiagnosticsNetworkAdapter
	goto jaringan
) else if %jaringan%==6 (
    goto Utama
) else (
    echo Pilihan tidak valid.
    pause
    goto jaringan
)

pause
) else (
    echo Pilihan tidak valid.
) else if %jaringan%==6 (
    goto Utama
)

pause

:Setting
cls
title Setting Komputer
echo ---------------------------------------------------------
echo                          SETTING KOMPUTER
echo ---------------------------------------------------------
echo                  [1]  Setting Keyboard 
echo                  [2]  Setting Language
echo                  [3]  Setting Date
echo                  [4]  Add User
echo                  [5]  Sound Control
echo                  [6]  Open Startup
echo                  [7]  chrome
echo                  [8]  Exit 
echo.

set /p "pilihan=Masukkan Pilihan Menu:"
if %pilihan%==1  goto keyboard
if %pilihan%==2  goto Language
if %pilihan%==3  goto Date
if %pilihan%==4  goto User
if %pilihan%==5  goto Sound
if %pilihan%==6  goto Startup
if %pilihan%==7  goto chrome
if %pilihan%==8  goto Exit 

		:Keyboard
		cls
		start control Keyboard
		goto setting
		pause
		:Language
		cls
		start intl.cpl 
		goto setting
		pause 
		:Date
		cls
		start timedate.cpl
		goto setting
		:User
		cls
		start Netplwiz.exe
		goto setting
		pause
		:Sound
		cls
		start SndVol.exe
		goto setting
		pause
		:Startup
		start msconfig
		goto setting
		pause
		:chrome
		"C:\Program Files (x86)\Google\Chrome\Application\chrome"
		goto setting
		:Exit
		goto Utama

pause>nul
