@echo off
echo ========================================
echo   MYTUBE - LOGIN PAGE
echo ========================================
echo.
echo Starting PHP Server...
echo Server: http://localhost:8000
echo.
echo Membuka halaman login...
echo.

start http://localhost:8000/login.html

php -S localhost:8000
