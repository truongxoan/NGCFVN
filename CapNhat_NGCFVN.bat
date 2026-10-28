@echo off
setlocal EnableDelayedExpansion
title Cap nhat NGCFVN tu GitHub (v2 - tu tim dung thu muc)

rem ===================================================================
rem  CAP NHAT NGCFVN v2
rem  - Tu dong tim thu muc chua A_backup_original (ke ca khi nam trong
rem    thu muc con 1 cap, vi du NG_Update.exe\A_backup_original)
rem  - Sao luu ban cu vao _SaoLuu truoc khi ghi de
rem  - Cap nhat xong TU KIEM CHUNG map12.au3 da la ban moi chua
rem  Repo: https://github.com/truongxoan/NGCFVN (nhanh main)
rem ===================================================================

set "REPO_ZIP=https://codeload.github.com/truongxoan/NGCFVN/zip/refs/heads/main"

rem ---- 1. Tim thu muc goc du an (noi chua A_backup_original) ----
set "ROOT="
if exist "%~dp0A_backup_original\map12.au3" set "ROOT=%~dp0"
if not defined ROOT if exist "%~dp0..\A_backup_original\map12.au3" set "ROOT=%~dp0..\"
if not defined ROOT (
    for /d %%D in ("%~dp0*") do (
        if not defined ROOT if exist "%%D\A_backup_original\map12.au3" set "ROOT=%%D\"
    )
)
if not defined ROOT (
    echo [LOI] Khong tim thay A_backup_original quanh vi tri file nay.
    echo Hay dat CapNhat_NGCFVN.bat vao: thu muc goc du an, ben trong
    echo A_backup_original, hoac thu muc cha cua thu muc chua no.
    pause
    exit /b 1
)
echo Thu muc du an: %ROOT%

set "TMPD=%TEMP%\NGCFVN_update"
if exist "%TMPD%" rmdir /s /q "%TMPD%"
mkdir "%TMPD%" 2>nul

echo [1/4] Dang tai ban moi nhat tu GitHub...
curl.exe -L --fail -o "%TMPD%\ngcfvn.zip" "%REPO_ZIP%" 2>nul
if not exist "%TMPD%\ngcfvn.zip" (
    powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-WebRequest -Uri '%REPO_ZIP%' -OutFile '%TMPD%\ngcfvn.zip' -UseBasicParsing } catch { exit 1 }"
)
if not exist "%TMPD%\ngcfvn.zip" (
    echo [LOI] Tai that bai. Kiem tra mang roi chay lai. Folder chua bi thay doi.
    pause
    exit /b 1
)

echo [2/4] Dang giai nen...
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Expand-Archive -Path '%TMPD%\ngcfvn.zip' -DestinationPath '%TMPD%\x' -Force } catch { exit 1 }"
if not exist "%TMPD%\x\NGCFVN-main\A_backup_original\map12.au3" (
    echo [LOI] Giai nen that bai hoac cau truc repo da thay doi. Folder chua bi thay doi.
    pause
    exit /b 1
)

echo [3/4] Dang sao luu ban cu...
for /f "usebackq delims=" %%T in (`powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"`) do set "TS=%%T"
if not defined TS set "TS=backup"
set "BK=%ROOT%_SaoLuu\%TS%"
mkdir "%BK%" 2>nul
robocopy "%ROOT%" "%BK%" /E /XD "%ROOT%_SaoLuu" "%ROOT%NGCFVN-App" /XF CapNhat_NGCFVN.bat /NFL /NDL /NJH /NJS >nul
echo        Da sao luu vao: _SaoLuu\%TS%

echo [4/4] Dang ghi de ban moi...
robocopy "%TMPD%\x\NGCFVN-main" "%ROOT%" /E /XD _SaoLuu NGCFVN-App /XF CapNhat_NGCFVN.bat /NFL /NDL /NJH /NJS >nul
if errorlevel 8 (
    echo [LOI] Ghi de gap loi. Ban cu van con trong _SaoLuu\%TS% de khoi phuc.
    pause
    exit /b 1
)
rmdir /s /q "%TMPD%" 2>nul

rem ---- Kiem chung sau cap nhat ----
findstr /c:"Global $1Z = 1" "%ROOT%A_backup_original\map12.au3" >nul 2>&1
if errorlevel 1 (
    echo.
    echo [CANH BAO] map12.au3 SAU CAP NHAT van chua co khai bao $1Z!
    echo Co the co chuong trinh nao do (NG_Update.exe cua bo cu) tu tai
    echo lai ban goc va ghi de. Hay tat/xoa no roi chay lai file nay.
    pause
    exit /b 1
)
echo.
echo ====================================================
echo  CAP NHAT XONG + DA KIEM CHUNG: map12.au3 la BAN MOI.
echo  Ban cu duoc giu tai: _SaoLuu\%TS%
echo  Buoc tiep theo: chay Build_Tao_EXE.bat de tao folder
echo  NGCFVN-App toan .exe, roi mo NGCFVN_Menu.exe dung ngay.
echo ====================================================
pause
exit /b 0
