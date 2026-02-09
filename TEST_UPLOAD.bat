@echo off
echo ========================================
echo   Test Upload - MyTube
echo ========================================
echo.
echo Membuka halaman test upload...
echo.
echo URL: http://localhost:8000/test-upload.html
echo.
echo ========================================
echo.

start http://localhost:8000/test-upload.html

echo.
echo Halaman test upload dibuka!
echo.
echo CARA MENGGUNAKAN:
echo 1. Isi judul lagu
echo 2. Isi nama artis
echo 3. Pilih banner/cover image (opsional)
echo 4. Pilih file MP3/audio (wajib)
echo 5. Klik Upload Lagu
echo.
echo CATATAN:
echo - Pastikan server PHP sudah jalan (start-server.bat)
echo - Format audio: MP3, WAV, OGG, M4A
echo - Format image: JPG, PNG, GIF, WEBP
echo.
pause
