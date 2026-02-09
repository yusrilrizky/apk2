# 🎵 Setup Spotify API

## Cara Mendapatkan Spotify API Credentials

### Step 1: Buat Akun Spotify Developer

1. Buka https://developer.spotify.com/dashboard
2. Login dengan akun Spotify (atau buat akun baru jika belum punya)
3. Setujui Terms of Service

### Step 2: Buat Aplikasi Baru

1. Klik tombol **"Create an App"**
2. Isi form:
   - **App name**: Spotify Clone Music App
   - **App description**: Music streaming app with Spotify integration
   - **Redirect URIs**: http://localhost:8000/callback (optional)
3. Centang checkbox agreement
4. Klik **"Create"**

### Step 3: Dapatkan Credentials

1. Setelah app dibuat, Anda akan melihat dashboard app
2. Copy **Client ID** (terlihat langsung)
3. Klik **"Show Client Secret"**
4. Copy **Client Secret**

### Step 4: Masukkan ke Aplikasi

Edit file `config/spotify-config.php`:

```php
define('SPOTIFY_CLIENT_ID', 'paste_client_id_disini');
define('SPOTIFY_CLIENT_SECRET', 'paste_client_secret_disini');
define('SPOTIFY_DEMO_MODE', false); // Ubah ke false
```

### Step 5: Test API

1. Buka dashboard: http://localhost:8000/dashboard.html
2. Cari lagu di search box Spotify
3. Jika berhasil, hasil pencarian akan muncul

---

## 🎯 Fitur Spotify API

### Yang Bisa Dilakukan:

✅ **Search Lagu**
- Cari jutaan lagu dari Spotify
- Lihat cover album, artis, dan info lagu

✅ **Preview Audio**
- Dengarkan preview 30 detik (jika tersedia)
- Tidak semua lagu punya preview

✅ **Import ke Database**
- Download cover album otomatis
- Download preview audio (jika ada)
- Simpan ke database lokal

### Yang TIDAK Bisa:

❌ Download full track (melanggar copyright)
❌ Streaming full song (butuh Spotify Premium API)
❌ Akses playlist user (butuh OAuth)

---

## 🔧 Demo Mode

Jika belum punya credentials, aplikasi akan jalan dalam **Demo Mode**:

- Menampilkan 3 lagu dummy untuk testing
- Tidak perlu Spotify API credentials
- Cocok untuk development/testing

Untuk mengaktifkan demo mode:
```php
define('SPOTIFY_DEMO_MODE', true);
```

---

## 🐛 Troubleshooting

### Error: "Failed to get access token"

**Penyebab:**
- Client ID atau Secret salah
- Belum mengaktifkan app di Spotify Dashboard

**Solusi:**
1. Cek kembali Client ID dan Secret
2. Pastikan tidak ada spasi di awal/akhir
3. Pastikan app sudah aktif di dashboard

### Error: "Invalid client"

**Penyebab:**
- Credentials tidak valid

**Solusi:**
1. Generate ulang Client Secret di dashboard
2. Copy paste ulang ke config

### Hasil pencarian kosong

**Penyebab:**
- Kata kunci terlalu spesifik
- Lagu tidak ada di Spotify

**Solusi:**
1. Coba kata kunci lebih umum
2. Cari dengan nama artis saja

---

## 📝 Catatan Penting

### Rate Limiting

Spotify API memiliki rate limit:
- **Free tier**: ~180 requests per minute
- Cukup untuk aplikasi personal

### Preview Audio

- Tidak semua lagu punya preview
- Preview hanya 30 detik
- Untuk full track, user harus punya Spotify Premium

### Copyright

- Jangan download/distribute full tracks
- Preview audio hanya untuk personal use
- Hormati hak cipta artis

---

## 🎉 Selesai!

Setelah setup, Anda bisa:
1. Search lagu dari Spotify
2. Preview audio (jika ada)
3. Import ke database lokal
4. Upload file audio sendiri

**Enjoy! 🎵**
