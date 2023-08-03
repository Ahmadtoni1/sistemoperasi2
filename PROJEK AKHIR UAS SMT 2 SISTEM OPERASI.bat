@echo off
:login
cls
echo SELAMAT DATANG DI PROJEK AKHIR SEMESTER 2 SISTEM OPERASI AHMAD TONI
set x=1
set y=1

set /p username=Masukkan username :
set /p password=Masukkan password :

if %password%==%y% goto menu
else %password% goto login

:menu
cls
echo ====================== SELAMAT DATANG ======================
echo ===============================================================
echo 1. APLIKASI PERHITUNGAN
echo 2. MENU APLIKASI
echo 3. MENU SETTING
echo 4. KELUAR
echo ===============================================================
echo ====================== TERIMAKASIH ======================
set /p pilihan=pilihan anda :
 
if %pilihan% == 1  goto HITUNG
if %pilihan% == 2  goto MENU_APLIKASI
if %pilihan% == 3  goto MENU_SETTING
if %pilihan% == 4  goto login 
else (
    echo pilihan anda tidak ada silahkan ulang kembali...
    pause
    goto menu
)

rem PROGRAM HITUNG
:HITUNG
cls
echo Aplikasi Menghitung
echo [1.]Penjumlahan
echo [2.]Pengurangan
echo [3.]Perkalian
echo [0.]kembali

set /p "pilih=Masukkan pilihan:"

if "%pilih%"=="1" (
    call:penjumlahan
) else if "%pilih%"=="2" (
    call:pengurangan
) else if "%pilih%"=="3" (
    call:perkalian
) else if "%pilih%"=="0" (
    goto menu 
) else (
    echo yang anda masukkan salah
    pause
    goto HITUNG
)

:penjumlahan
cls
echo Masukkan 2 angka yg akan dijumlahkan...
set /p "angka1=angka pertama:"
set /p "angka2=angka kedua:"
set /a hasil=angka1+angka2
echo hasil penjumlahan: %hasil%
pause
goto HITUNG

:pengurangan
cls
echo masukkan 2 angka yg akan dikurangkan...
set /p "angka1=angka pertama"
set /p "angka2=angka kedua"
set /a hasil=angka1-angka2
echo hasil pengurangan: %hasil%:
pause
goto HITUNG

:perkalian
cls
echo masukkan 2 angka yg akan dikalikan...
set /p "angka1=angka pertama"
set /p "angka2=angka kedua"
set /a hasil=angka1*angka2
echo hasil perkalian: %hasil%
pause
goto HITUNG

rem menu aplikasi
:MENU_APLIKASI
cls
echo Menu Aplikasi
echo -------------------
echo [1.]youtube
echo [2.]word
echo [0.]kembali

set /p "pilih=masukkan pilihan:"

if "%pilih%"=="1" (
    call:youtube
) else if "%pilih%"=="2" (
    call:ms.word
) else if "%pilih%"=="0" (
    goto menu
) else (
    echo pilihan yg anda masukkan salah
    pause
     goto menu_aplikasi
)

:youtube
cls
start www.youtube.com
pause
goto MENU_APLIKASI

:ms.word
start Winword.exe
pause
goto MENU_APLIKASI


rem MENU SETTING
:MENU_SETTING
cls
echo Menu Setting:
echo [1.]shutdown
echo [2.]restart
echo [0.]kembali

set /p "pilih=Masukkan pilihan:"

if "%pilih%"=="1" (
    call:shutdown
) else if "%pilih%"=="2" (
    call:restart
) else if "%pilih%"=="0" (
    goto menu
) else echo pilihan yg anda masukkan salah
pause
goto MENU_SETTING

:shutdown
cls
set /p "shutdown=echo yakin akan mematikan komputer?[Y/N]"
if %shutdown%==Y goto shutdown1
if %shutdown%==N goto MENU_SETTING
pause

:shutdown1
echo MATIKAN KOMPUTER
pause
shutdown -s -t 10 -c "KOMPUTER AKAN DIMATIKAN"
goto menu
pause

:restart
cls
set /p "restart=echo yakin anda akan merestart komputer?[Y/N]"
if %restart%==Y goto restart1
if %restart%==N goto MENU_SETTING
pause

:restart1
echo RESTART kOMPUTER
pause
shutdown -r -t 00 -c "restarting komputer sedang berjalan"
goto menu
pause





