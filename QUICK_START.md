# 🚀 Quick Start Guide

## Cara Cepat Menjalankan Aplikasi

### Opsi 1: Instalasi Otomatis (Recommended)

1. **Jalankan PHP Server**
   ```bash
   php -S localhost:8000
   ```

2. **Buka Installer**
   ```
   http://localhost:8000/install.php
   ```

3. **Isi Form Database**
   - Host: `localhost`
   - User: `root`
   - Password: (kosongkan jika tidak ada)
   - Database: `spotify_db`

4. **Klik "Mulai Instalasi"**

5. **Buka Dashboard**
   ```
   http://localhost:8000/dashboard.html
   ```

---

### Opsi 2: Manual Setup

1. **Jalankan Setup Database**
   ```bash
   php -S localhost:8000
   ```
   
   Buka browser:
   ```
   http://localhost:8000/config/setup.php
   ```

2. **Buka Dashboard**
   ```
   http://localhost:8000/dashboard.html
   ```

---

### Opsi 3: Menggunakan XAMPP/WAMP

1. **Copy folder ke htdocs**
   ```
   C:\xampp\htdocs\spotify-clone\
   ```

2. **Start Apache & MySQL di XAMPP**

3. **Buka Browser**
   ```
   http://localhost/spotify-clone/install.php
   ```

4. **Ikuti instalasi, lalu buka**
   ```
   http://localhost/spotify-clone/dashboard.html
   ```

---

## 🧪 Test API

Untuk memastikan API berjalan dengan baik:

```
http://localhost:8000/test-api.html
```

---

## 📝 Catatan Penting

### Setelah Instalasi Selesai:

**HAPUS file berikut untuk keamanan:**
```bash
del install.php
del config\setup.php
```

### Jika Upload Gagal:

Pastikan folder `uploads` memiliki permission write:

**Windows:**
- Klik kanan folder `uploads` → Properties → Security
- Pastikan "Full Control" dicentang

**Linux/Mac:**
```bash
chmod 777 uploads -R
```

---

## 🎯 Fitur Utama

### 1. Upload Lagu
- Klik banner hijau "Upload Sekarang"
- Isi judul, artis
- Upload banner (JPG/PNG)
- Upload audio (MP3/WAV)
- Klik "Upload Lagu"

### 2. Pengaturan Akun
- Klik "⚙️ Pengaturan" di kanan atas
- Atur username, email, nama tampilan
- Pilih tema dan kualitas audio
- Simpan

### 3. Putar Lagu
- Klik card lagu yang sudah diupload
- Player muncul di bawah
- Lagu akan otomatis diputar

---

## 🐛 Troubleshooting

### Error: Connection failed
```bash
# Cek MySQL running
# Windows: Buka XAMPP Control Panel
# Linux: sudo service mysql start
```

### Error: Permission denied
```bash
# Berikan permission ke folder uploads
chmod 777 uploads -R
```

### Lagu tidak muncul
```bash
# Buka browser console (F12)
# Cek error di tab Console
# Pastikan API endpoint bisa diakses
```

---

## 📞 Support

Jika ada masalah, cek:
1. README.md untuk dokumentasi lengkap
2. test-api.html untuk test koneksi
3. Browser console (F12) untuk error

---

**Selamat mencoba! 🎵**
