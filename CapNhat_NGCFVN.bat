@echo off
setlocal EnableDelayedExpansion
title Cap nhat NGCFVN tu GitHub

rem ===================================================================
rem  CAP NHAT NGCFVN - Tai ban moi nhat tu GitHub ve ghi de vao folder
rem  Repo: https://github.com/truongxoan/NGCFVN (nhanh main)
rem  Cach dung: dat file nay o thu muc goc du an (cung cap voi folder
rem  A_backup_original), bam dup de chay. Truoc khi ghi de, toan bo
rem  folder hien tai duoc sao luu vao folder _SaoLuu de phong loi.
rem ===================================================================

set "REPO_ZIP=https://codeload.github.com/truongxoan/NGCFVN/zip/refs/heads/main"
set "ROOT=%~dp0"
rem Neu dat file nay ben trong A_backup_original thi lui ra thu muc goc
if not exist "%ROOT%A_backup_original" if exist "%ROOT%NGCFVN_Menu.au3" set "ROOT=%~dp0..\"
if not exist "%ROOT%A_backup_original" (
    echo [LOI] Khong thay folder A_backup_original canh file nay.
    echo Hay dat CapNhat_NGCFVN.bat o thu muc goc du an NGCFVN roi chay lai.
    pause
    exit /b 1
)

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
if not exist "%TMPD%\x\NGCFVN-main\A_backup_original" (
    echo [LOI] Giai nen that bai hoac cau truc repo da thay doi. Folder chua bi thay doi.
    pause
    exit /b 1
)

echo [3/4] Dang sao luu folder hien tai...
for /f "usebackq delims=" %%T in (`powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"`) do set "TS=%%T"
if not defined TS set "TS=backup"
set "BK=%ROOT%_SaoLuu\%TS%"
mkdir "%BK%" 2>nul
robocopy "%ROOT%" "%BK%" /E /XD "%ROOT%_SaoLuu" /XF CapNhat_NGCFVN.bat /NFL /NDL /NJH /NJS >nul
echo        Da sao luu vao: _SaoLuu\%TS%

echo [4/4] Dang ghi de ban moi vao folder...
robocopy "%TMPD%\x\NGCFVN-main" "%ROOT%" /E /XD _SaoLuu /XF CapNhat_NGCFVN.bat /NFL /NDL /NJH /NJS >nul
if errorlevel 8 (
    echo [LOI] Ghi de gap loi. Ban cu van con trong _SaoLuu\%TS% de khoi phuc.
    pause
    exit /b 1
)

rmdir /s /q "%TMPD%" 2>nul
echo.
echo ====================================================
echo  CAP NHAT XONG! Folder da dong bo voi GitHub (main).
echo  Ban cu duoc giu tai: _SaoLuu\%TS%
echo  Mo A_backup_original\NGCFVN_Menu.au3 de dung menu moi.
echo ====================================================
pause
exit /b 0
