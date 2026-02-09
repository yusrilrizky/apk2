@echo off
echo ========================================
echo   MyTube - Music Streaming App
echo ========================================
echo.
echo Membuka MyTube di browser...
echo.
echo URL: http://localhost:8000/login.html
echo.
echo ========================================
echo.

start http://localhost:8000/login.html

echo.
echo Aplikasi dibuka di browser!
echo.
echo CATATAN:
echo - Pastikan server PHP sudah jalan (start-server.bat)
echo - Login dengan username dan password yang sudah didaftar
echo - Jika belum punya akun, klik Daftar
echo.
pause
