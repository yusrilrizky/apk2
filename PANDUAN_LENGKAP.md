# 📱 MyTube - Panduan Lengkap

## ✅ Fitur yang Sudah Diperbaiki

### 1. **Tampilan Responsive** 
Aplikasi sekarang tampil sempurna di semua device:
- ✅ **Mobile** (HP): Layout 2 kolom, sidebar horizontal
- ✅ **Tablet**: Layout 3 kolom, optimal untuk tablet
- ✅ **Laptop**: Layout 4-6 kolom, sidebar vertikal
- ✅ **Desktop Besar**: Max width 1600px, layout luas

### 2. **Sistem Favorit Bekerja Sempurna**
- ✅ Klik tombol 🤍 untuk tambah ke favorit (berubah jadi ❤️)
- ✅ Klik tombol ❤️ untuk hapus dari favorit (berubah jadi 🤍)
- ✅ Data tersimpan di localStorage browser
- ✅ Menu Library menampilkan hanya lagu favorit
- ✅ Favorit tetap ada setelah refresh halaman

---

## 🎯 Cara Menggunakan

### **Mencari Lagu**
1. Ketik nama lagu atau artis di kotak pencarian
2. Tekan Enter atau klik tombol "🔍 Cari"
3. Hasil pencarian muncul dengan album cover
4. Klik kartu lagu untuk langsung putar di dashboard
5. Klik tombol ➕ untuk simpan ke library

### **Mendengarkan Radio**
1. Klik tombol "🔍 Cari" tanpa mengetik apapun
2. Pilih salah satu dari 6 stasiun radio:
   - 🎵 Top Hits
   - 🎤 Pop
   - 😌 Chill
   - 🎸 Rock
   - 🎺 Jazz
   - 🎧 EDM
3. Musik langsung streaming 24/7

### **Upload Lagu Sendiri**
1. Klik tombol "📤 Upload" atau menu "Upload" di sidebar
2. Isi form:
   - Judul lagu
   - Nama artis
   - Upload gambar banner (JPG/PNG)
   - Upload file audio (MP3/WAV)
3. Klik "Upload Lagu"
4. Lagu muncul di dashboard

### **Menambah ke Favorit**
1. Lihat kartu lagu di dashboard
2. Klik tombol 🤍 di pojok kanan atas kartu
3. Tombol berubah jadi ❤️ (tersimpan)
4. Buka menu "Library" untuk lihat semua favorit

### **Melihat Library Favorit**
1. Klik menu "📁 Library" di sidebar
2. Hanya lagu favorit yang ditampilkan
3. Klik ❤️ untuk hapus dari favorit
4. Klik "🏠 Beranda" untuk kembali ke semua lagu

### **Menu Trending**
1. Klik menu "🔥 Trending" di sidebar
2. Menampilkan 4 lagu pertama (trending)

### **Pengaturan Akun**
1. Klik tombol "⚙️ Pengaturan" atau avatar di kanan atas
2. Isi data:
   - Username
   - Email
   - Nama tampilan
   - Tema (Dark/Light)
   - Kualitas audio
3. Klik "Simpan Pengaturan"

---

## 📱 Test Responsive

### **Cara Test di Browser**
1. Buka `index.html` di browser (Chrome/Firefox/Edge)
2. Tekan **F12** untuk buka Developer Tools
3. Klik icon **device/mobile** di toolbar (atau Ctrl+Shift+M)
4. Pilih device dari dropdown:
   - iPhone SE (375px)
   - iPhone 12 Pro (390px)
   - iPad (768px)
   - iPad Pro (1024px)
   - Laptop (1440px)
5. Lihat tampilan otomatis menyesuaikan

### **Breakpoints**
- **0 - 380px**: Very small phone (1 kolom)
- **381 - 768px**: Mobile (2 kolom)
- **769 - 1024px**: Tablet (3 kolom)
- **1025 - 1399px**: Laptop (4-5 kolom)
- **1400px+**: Desktop besar (5-6 kolom)

---

## 🧪 Test Fitur

Buka file `TEST_FITUR.html` untuk test:
1. ✅ Sistem favorit (tambah/hapus)
2. ✅ LocalStorage
3. ✅ Responsive design
4. ✅ Ukuran layar

---

## 🎵 Fitur Musik

### **Pencarian Musik**
- Menggunakan iTunes Search API
- Preview 30 detik (legal & gratis)
- Putar langsung di dashboard
- Simpan ke library

### **Radio Streaming**
- 6 stasiun radio online
- Streaming 24/7 full song
- Kualitas audio bagus
- Langsung putar di dashboard

### **Upload MP3**
- Upload file MP3/WAV sendiri
- Tambahkan banner/cover image
- Full song playback
- Tersimpan di server

---

## 💾 Data Storage

### **LocalStorage**
Data disimpan di browser:
- `mytube_favorites`: Array ID lagu favorit
- `spotify_settings`: Pengaturan user

### **Cara Clear Data**
```javascript
// Buka Console (F12) dan ketik:
localStorage.clear()
```

---

## 🐛 Troubleshooting

### **Favorit tidak tersimpan?**
- Pastikan browser mengizinkan localStorage
- Coba clear cache browser (Ctrl+Shift+Del)
- Test dengan `TEST_FITUR.html`

### **Tampilan berantakan di mobile?**
- Pastikan ada tag `<meta name="viewport">`
- Clear cache browser
- Coba browser lain (Chrome recommended)

### **Musik tidak bisa diputar?**
- Cek koneksi internet
- Pastikan browser support HTML5 audio
- Coba lagu lain

### **Upload gagal?**
- Pastikan file MP3 valid
- Ukuran file tidak terlalu besar (max 10MB)
- Cek permission folder `uploads/`

---

## 📂 Struktur File

```
MyTube/
├── index.html                          # Main application
├── TEST_FITUR.html                     # Testing page
├── PANDUAN_LENGKAP.md                  # Dokumentasi ini
├── PERBAIKAN_RESPONSIVE_FAVORIT.txt    # Log perbaikan
├── api/
│   ├── upload.php                      # Upload handler
│   ├── songs.php                       # Song management
│   └── user.php                        # User management
├── config/
│   ├── database.php                    # DB connection
│   └── setup.php                       # DB setup
└── uploads/                            # Uploaded files
```

---

## 🎨 Customization

### **Ganti Warna Tema**
Edit di `index.html` bagian CSS:
```css
/* Warna utama (hijau) */
#1db954 → ganti dengan warna lain

/* Background */
background: url('oh.jpg') → ganti dengan gambar lain
```

### **Tambah Radio Station**
Edit fungsi `searchSpotify()`:
```javascript
<button onclick="playRadio('URL_STREAM', 'Nama Station')">
  🎵 Nama Station
</button>
```

---

## ✅ Checklist Fitur

- [x] Responsive mobile & laptop
- [x] Sistem favorit bekerja
- [x] Pencarian musik (iTunes API)
- [x] Radio streaming 24/7
- [x] Upload MP3 sendiri
- [x] Library management
- [x] Trending songs
- [x] Search library
- [x] Settings akun
- [x] Music player
- [x] Background responsive
- [x] Modal responsive

---

## 📞 Support

Jika ada masalah:
1. Buka `TEST_FITUR.html` untuk test
2. Cek Console browser (F12 → Console)
3. Pastikan semua file ada
4. Clear cache browser

---

**Dibuat:** 8 Februari 2026  
**Status:** ✅ Production Ready  
**Version:** 2.0 - Responsive & Favorit Fixed
