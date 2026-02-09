@echo off
echo ========================================
echo   BUILD APK - MyTube Flutter
echo ========================================
echo.

REM Cek Flutter terinstall
flutter --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Flutter tidak ditemukan!
    echo Install Flutter terlebih dahulu.
    pause
    exit /b 1
)

echo Flutter ditemukan! ✓
echo.

echo Masuk ke folder mytube_app...
cd mytube_app

echo.
echo ========================================
echo   STEP 1: Get Dependencies
echo ========================================
echo.

flutter pub get

if errorlevel 1 (
    echo ERROR: Gagal get dependencies!
    pause
    exit /b 1
)

echo.
echo Dependencies OK! ✓
echo.

echo ========================================
echo   STEP 2: Build APK
echo ========================================
echo.
echo Pilih jenis build:
echo 1. Release APK (untuk distribusi, ukuran kecil)
echo 2. Debug APK (untuk testing, ukuran besar)
echo.

set /p choice="Pilih (1/2): "

if "%choice%"=="1" (
    echo.
    echo Building Release APK...
    echo Mohon tunggu 5-10 menit...
    echo.
    
    flutter build apk --release
    
    if errorlevel 1 (
        echo.
        echo ========================================
        echo   BUILD GAGAL!
        echo ========================================
        echo.
        echo Coba solusi ini:
        echo 1. flutter clean
        echo 2. flutter pub get
        echo 3. flutter build apk --release
        echo.
    ) else (
        echo.
        echo ========================================
        echo   BUILD BERHASIL! ✓
        echo ========================================
        echo.
        echo APK ada di:
        echo %cd%\build\app\outputs\flutter-apk\app-release.apk
        echo.
        echo Ukuran: ±15 MB
        echo.
        echo Cara install di HP:
        echo 1. Kirim APK ke HP (WhatsApp/Email/USB)
        echo 2. Buka file APK di HP
        echo 3. Aktifkan "Unknown Sources" jika diminta
        echo 4. Tap Install
        echo 5. Tap Open
        echo.
        echo Aplikasi siap digunakan! 🎵
        echo.
        
        REM Buka folder APK
        explorer build\app\outputs\flutter-apk
    )
) else if "%choice%"=="2" (
    echo.
    echo Building Debug APK...
    echo Mohon tunggu 5-10 menit...
    echo.
    
    flutter build apk --debug
    
    if errorlevel 1 (
        echo.
        echo ========================================
        echo   BUILD GAGAL!
        echo ========================================
        echo.
    ) else (
        echo.
        echo ========================================
        echo   BUILD BERHASIL! ✓
        echo ========================================
        echo.
        echo APK ada di:
        echo %cd%\build\app\outputs\flutter-apk\app-debug.apk
        echo.
        echo Ukuran: ±20 MB
        echo.
        
        REM Buka folder APK
        explorer build\app\outputs\flutter-apk
    )
) else (
    echo.
    echo Pilihan tidak valid! Pilih 1 atau 2.
    echo.
)

cd ..
echo.
pause
