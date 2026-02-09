@echo off
echo ========================================
echo   BUILD APK PRODUCTION - MyTube
echo ========================================
echo.

echo URL Production: https://mytube.ct.ws/login.html
echo.
echo APK ini bisa dibuka KAPAN SAJA, DIMANA SAJA!
echo Tidak perlu server lokal!
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
    cd ..
    pause
    exit /b 1
)

echo.
echo ========================================
echo   BUILD BERHASIL! ✓
echo ========================================
echo.
echo APK Production ada di:
echo %cd%\build\app\outputs\flutter-apk\app-release.apk
echo.
echo URL di APK: https://mytube.ct.ws/login.html
echo.
echo ========================================
echo   KEUNTUNGAN APK INI
echo ========================================
echo.
echo ✅ Bisa dibuka kapan saja
echo ✅ Bisa dibuka dimana saja
echo ✅ Tidak perlu server lokal
echo ✅ Tidak perlu 1 WiFi
echo ✅ Langsung konek ke internet
echo ✅ Siap distribusi ke user!
echo.
echo ========================================
echo   CARA INSTALL DI HP
echo ========================================
echo.
echo 1. Kirim APK ke HP (WhatsApp/Email/USB)
echo 2. Buka file APK di HP
echo 3. Install
echo 4. Buka aplikasi MyTube
echo 5. Selesai! 🎵
echo.
echo TIDAK PERLU:
echo ❌ Server lokal
echo ❌ 1 WiFi
echo ❌ Komputer nyala
echo.
echo Aplikasi langsung konek ke:
echo https://mytube.ct.ws
echo.

REM Buka folder APK
explorer build\app\outputs\flutter-apk

cd ..
echo.
echo ========================================
echo   APK SIAP DISTRIBUSI!
echo ========================================
echo.
pause
