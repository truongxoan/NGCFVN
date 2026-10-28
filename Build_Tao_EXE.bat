@echo off
setlocal EnableDelayedExpansion
title Build NGCFVN-App - Bien dich tat ca tool thanh EXE

rem ===================================================================
rem  BUILD NGCFVN-App: bien dich toan bo file .au3 (ban da sua, khong
rem  key) thanh .exe bang Aut2Exe cua AutoIt3, roi gom vao folder sach
rem  NGCFVN-App chi gom: cac file .exe + DLL/INI can thiet de chay.
rem  Khong con file .au3, .bmp, SetupNG.exe hay file rac nao khac.
rem  Cach dung: dat file .bat nay CANH folder A_backup_original
rem  (thu muc goc du an NGCFVN) roi bam dup. May can cai AutoIt3.
rem ===================================================================

set "SRC=%~dp0A_backup_original"
if not exist "%SRC%\map12.au3" (
    echo [LOI] Khong thay folder A_backup_original canh file nay.
    echo Hay dat Build_Tao_EXE.bat o thu muc goc du an NGCFVN roi chay lai.
    pause
    exit /b 1
)

rem ---- Tim Aut2Exe (cong cu bien dich cua AutoIt3) ----
set "AUT2EXE="
if exist "%ProgramFiles(x86)%\AutoIt3\Aut2Exe\Aut2Exe.exe" set "AUT2EXE=%ProgramFiles(x86)%\AutoIt3\Aut2Exe\Aut2Exe.exe"
if not defined AUT2EXE if exist "%ProgramFiles%\AutoIt3\Aut2Exe\Aut2Exe.exe" set "AUT2EXE=%ProgramFiles%\AutoIt3\Aut2Exe\Aut2Exe.exe"
if not defined AUT2EXE if exist "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2Exe.exe" set "AUT2EXE=C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2Exe.exe"
if not defined AUT2EXE (
    echo [LOI] Chua cai AutoIt3 nen khong co Aut2Exe de bien dich.
    echo Tai AutoIt3 mien phi tai: https://www.autoitscript.com/site/autoit/downloads/
    echo Cai xong chay lai file nay.
    pause
    exit /b 1
)
echo Dung Aut2Exe: %AUT2EXE%

rem ---- Tao folder dich sach ----
set "APP=%~dp0NGCFVN-App"
if exist "%APP%" rmdir /s /q "%APP%"
mkdir "%APP%"
echo Folder dich: %APP%
echo.

set /a OK=0
set /a FAIL=0

rem ---- Bien dich tung file (x86 mac dinh - bat buoc vi NG.dll la 32-bit) ----
for %%F in (NGCFVN_Menu NGCFVN_Menu_Map AProty AProty3 GPVV devenv4 map map1 map2 map3 map5 map6 map7 map8 map9 map10 map11 map12) do (
    echo Dang bien dich: %%F.au3
    "%AUT2EXE%" /in "%SRC%\%%F.au3" /out "%APP%\%%F.exe" >nul 2>&1
    if exist "%APP%\%%F.exe" (
        set /a OK+=1
    ) else (
        echo    [FAIL] %%F.au3 - mo file nay bang SciTE (F7) de xem loi cu the.
        set /a FAIL+=1
    )
)
echo.

rem ---- Copy DLL/INI can thiet luc chay ----
for %%F in (NG.dll NG_HID.dll modx86.dll buConfig.ini SetToolAGGrz3.ini SetToolAutogigant.ini) do (
    if exist "%SRC%\%%F" copy /y "%SRC%\%%F" "%APP%\%%F" >nul
)

rem ---- Copy cac tool chi co ban .exe san (khong co source .au3) ----
for %%F in (111click.exe CleanNG.exe Graphic_CF.exe HIDU.exe) do (
    if exist "%SRC%\%%F" copy /y "%SRC%\%%F" "%APP%\%%F" >nul
)

rem ---- File huong dan trong folder App ----
set "HD=%APP%\HUONG_DAN.txt"
echo NGCFVN-App - Folder chay doc lap (khong can key, khong file rac) > "%HD%"
echo ================================================================ >> "%HD%"
echo Cach chay: >> "%HD%"
echo  - Mo NGCFVN_Menu.exe de dung MENU TONG HOP (20 chuc nang) >> "%HD%"
echo  - Hoac NGCFVN_Menu_Map.exe neu chi dung cac module MAP >> "%HD%"
echo  - Bam INS de an / hien menu ngay ca khi dang trong game >> "%HD%"
echo  - Moi chuc nang bat/tat rieng ngay trong menu >> "%HD%"
echo  - Cac file .exe con lai la tung tool chay doc lap >> "%HD%"
echo Luu y: >> "%HD%"
echo  - Giu nguyen cac file .dll va .ini trong folder nay (tool can luc chay) >> "%HD%"
echo  - Chay bang quyen Admin (chuot phai - Run as administrator) >> "%HD%"
echo  - SetupNG.exe cua bo cu khong nam trong folder nay (chi la file cai dat) >> "%HD%"

echo ====================================================
echo  HOAN TAT: bien dich thanh cong %OK% file, loi %FAIL% file.
echo  Folder chay rieng biet: NGCFVN-App
echo  Tu gio chi can chay NGCFVN_Menu.exe trong folder do.
echo ====================================================
if %FAIL% GTR 0 echo Luu y: file nao FAIL hay mo bang SciTE de xem loi, chup anh gui lai de duoc sua tiep.
explorer "%APP%"
pause
exit /b 0
