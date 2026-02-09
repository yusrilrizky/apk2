@echo off
echo ========================================
echo   REBUILD APK UNTUK HP - MyTube
echo ========================================
echo.

echo URL sudah diganti ke: http://192.168.1.2:8000/login.html
echo IP Komputer: 192.168.1.2
echo.

echo ========================================
echo   CHECKLIST
echo ========================================
echo.
echo 1. Server PHP sudah jalan? (Y/N)
echo    Command: php -S 0.0.0.0:8000
set /p server="   Jawab: "

if /i "%server%" NEQ "Y" (
    echo.
    echo ❌ Jalankan server dulu!
    echo.
    echo Buka Command Prompt baru, jalankan:
    echo php -S 0.0.0.0:8000
    echo.
    echo Atau double click: TEST_SERVER_HP.bat
    echo.
    pause
    exit /b 1
)

echo.
echo 2. Sudah test di browser HP? (Y/N)
echo    URL: http://192.168.1.2:8000/login.html
set /p test="   Jawab: "

if /i "%test%" NEQ "Y" (
    echo.
    echo ❌ Test di browser HP dulu!
    echo.
    echo 1. Buka Chrome di HP
    echo 2. Akses: http://192.168.1.2:8000/login.html
    echo 3. Pastikan halaman login muncul
    echo 4. Jika berhasil, kembali ke sini
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   BUILDING APK
echo ========================================
echo.

cd mytube_app

echo Step 1: Clean build...
flutter clean

echo.
echo Step 2: Get dependencies...
flutter pub get

echo.
echo Step 3: Build Release APK...
echo Mohon tunggu 5-10 menit...
echo.

flutter build apk --release

if errorlevel 1 (
    echo.
    echo ========================================
    echo   BUILD GAGAL!
    echo ========================================
    echo.
    echo Coba lagi atau hubungi developer.
    echo.
    cd ..
    pause
    exit /b 1
)

echo.
echo ========================================
echo   BUILD BERHASIL! ✓
echo ========================================
echo.
echo APK baru ada di:
echo %cd%\build\app\outputs\flutter-apk\app-release.apk
echo.
echo URL di APK: http://192.168.1.2:8000/login.html
echo.
echo ========================================
echo   CARA INSTALL DI HP
echo ========================================
echo.
echo 1. Kirim APK ke HP (WhatsApp/Email/USB)
echo 2. Hapus aplikasi MyTube lama (jika ada)
echo 3. Install APK baru
echo 4. Pastikan server masih jalan!
echo 5. Pastikan HP & komputer 1 WiFi!
echo 6. Buka aplikasi MyTube
echo 7. Selesai! 🎵
echo.

REM Buka folder APK
explorer build\app\outputs\flutter-apk

cd ..
pause
