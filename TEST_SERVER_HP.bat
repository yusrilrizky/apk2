@echo off
echo ========================================
echo   TEST SERVER UNTUK HP - MyTube
echo ========================================
echo.

echo IP Komputer Anda: 192.168.1.2
echo URL untuk HP: http://192.168.1.2:8000/login.html
echo.

echo ========================================
echo   CHECKLIST SEBELUM MULAI
echo ========================================
echo.
echo 1. HP dan komputer sudah 1 WiFi? (Y/N)
set /p wifi="   Jawab: "

if /i "%wifi%" NEQ "Y" (
    echo.
    echo ❌ Pastikan HP dan komputer terhubung ke WiFi yang SAMA!
    echo.
    pause
    exit /b 1
)

echo.
echo 2. File login.html sudah ada? (Y/N)
set /p file="   Jawab: "

if /i "%file%" NEQ "Y" (
    echo.
    echo ❌ Pastikan file login.html ada di folder ini!
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   STARTING SERVER
echo ========================================
echo.
echo Server akan jalan di:
echo - Komputer: http://localhost:8000/login.html
echo - HP: http://192.168.1.2:8000/login.html
echo.
echo PENTING:
echo - Jangan tutup window ini!
echo - Test di browser HP: http://192.168.1.2:8000/login.html
echo - Jika berhasil, build APK baru!
echo.
echo ========================================
echo   SERVER RUNNING...
echo ========================================
echo.

php -S 0.0.0.0:8000

echo.
echo Server stopped.
pause
