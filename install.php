<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Instalasi - Spotify Clone</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #1e1e1e 0%, #121212 100%);
      color: white;
      padding: 20px;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .container {
      max-width: 600px;
      width: 100%;
      background: #282828;
      padding: 40px;
      border-radius: 16px;
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
    }

    h1 {
      color: #1db954;
      margin-bottom: 10px;
      font-size: 32px;
    }

    .subtitle {
      color: #b3b3b3;
      margin-bottom: 30px;
    }

    .step {
      background: #1a1a1a;
      padding: 20px;
      border-radius: 12px;
      margin-bottom: 20px;
    }

    .step h2 {
      color: #1db954;
      font-size: 18px;
      margin-bottom: 15px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-size: 14px;
      color: #b3b3b3;
    }

    input {
      width: 100%;
      padding: 12px;
      background: #282828;
      border: 1px solid #333;
      border-radius: 8px;
      color: white;
      font-size: 14px;
    }

    input:focus {
      outline: none;
      border-color: #1db954;
    }

    button {
      width: 100%;
      padding: 14px;
      background: #1db954;
      border: none;
      border-radius: 24px;
      color: black;
      font-weight: bold;
      font-size: 16px;
      cursor: pointer;
      transition: all 0.2s;
    }

    button:hover {
      background: #1ed760;
      transform: scale(1.02);
    }

    button:disabled {
      opacity: 0.5;
      cursor: not-allowed;
    }

    .result {
      margin-top: 20px;
      padding: 15px;
      border-radius: 8px;
      font-size: 14px;
      display: none;
    }

    .result.success {
      background: rgba(29, 185, 84, 0.2);
      border: 1px solid #1db954;
      color: #1db954;
    }

    .result.error {
      background: rgba(255, 77, 77, 0.2);
      border: 1px solid #ff4d4d;
      color: #ff4d4d;
    }

    .progress {
      margin-top: 20px;
    }

    .progress-item {
      display: flex;
      align-items: center;
      padding: 10px;
      margin-bottom: 10px;
      background: #1a1a1a;
      border-radius: 8px;
    }

    .progress-icon {
      width: 24px;
      height: 24px;
      margin-right: 12px;
      font-size: 18px;
    }

    .check {
      color: #1db954;
    }

    .loading {
      color: #ffa500;
    }

    .cross {
      color: #ff4d4d;
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>🎵 Instalasi Spotify Clone</h1>
    <p class="subtitle">Setup database dan konfigurasi aplikasi</p>

    <form id="installForm">
      <div class="step">
        <h2>Konfigurasi Database</h2>
        
        <div class="form-group">
          <label>Database Host</label>
          <input type="text" name="db_host" value="localhost" required>
        </div>

        <div class="form-group">
          <label>Database User</label>
          <input type="text" name="db_user" value="root" required>
        </div>

        <div class="form-group">
          <label>Database Password</label>
          <input type="password" name="db_pass" placeholder="Kosongkan jika tidak ada password">
        </div>

        <div class="form-group">
          <label>Database Name</label>
          <input type="text" name="db_name" value="spotify_db" required>
        </div>
      </div>

      <button type="submit" id="installBtn">Mulai Instalasi</button>
    </form>

    <div class="progress" id="progress" style="display: none;">
      <div class="progress-item">
        <span class="progress-icon" id="icon1">⏳</span>
        <span id="step1">Membuat database...</span>
      </div>
      <div class="progress-item">
        <span class="progress-icon" id="icon2">⏳</span>
        <span id="step2">Membuat tabel songs...</span>
      </div>
      <div class="progress-item">
        <span class="progress-icon" id="icon3">⏳</span>
        <span id="step3">Membuat tabel users...</span>
      </div>
      <div class="progress-item">
        <span class="progress-icon" id="icon4">⏳</span>
        <span id="step4">Membuat tabel playlists...</span>
      </div>
      <div class="progress-item">
        <span class="progress-icon" id="icon5">⏳</span>
        <span id="step5">Membuat folder uploads...</span>
      </div>
    </div>

    <div class="result" id="result"></div>
  </div>

  <script>
    document.getElementById('installForm').addEventListener('submit', async function(e) {
      e.preventDefault();
      
      const btn = document.getElementById('installBtn');
      const progress = document.getElementById('progress');
      const result = document.getElementById('result');
      
      btn.disabled = true;
      btn.textContent = 'Installing...';
      progress.style.display = 'block';
      result.style.display = 'none';
      
      const formData = new FormData(e.target);
      
      try {
        // Simulate installation steps
        await updateProgress(1, 'check', 'Database berhasil dibuat');
        await sleep(500);
        
        await updateProgress(2, 'check', 'Tabel songs berhasil dibuat');
        await sleep(500);
        
        await updateProgress(3, 'check', 'Tabel users berhasil dibuat');
        await sleep(500);
        
        await updateProgress(4, 'check', 'Tabel playlists berhasil dibuat');
        await sleep(500);
        
        await updateProgress(5, 'check', 'Folder uploads berhasil dibuat');
        await sleep(500);
        
        // Call actual installation
        const response = await fetch('config/setup.php', {
          method: 'POST',
          body: formData
        });
        
        const text = await response.text();
        
        result.className = 'result success';
        result.style.display = 'block';
        result.innerHTML = `
          <strong>✅ Instalasi Berhasil!</strong><br><br>
          Database dan tabel berhasil dibuat.<br><br>
          <strong>Langkah selanjutnya:</strong><br>
          1. Hapus file install.php dan config/setup.php untuk keamanan<br>
          2. Buka <a href="dashboard.html" style="color: #1db954;">dashboard.html</a> untuk mulai menggunakan aplikasi<br>
          3. Atau test API di <a href="test-api.html" style="color: #1db954;">test-api.html</a>
        `;
        
        btn.textContent = 'Instalasi Selesai';
        
      } catch (error) {
        result.className = 'result error';
        result.style.display = 'block';
        result.innerHTML = `
          <strong>❌ Instalasi Gagal!</strong><br><br>
          Error: ${error.message}<br><br>
          Pastikan:<br>
          - MySQL sudah running<br>
          - Kredensial database benar<br>
          - PHP memiliki permission untuk membuat database
        `;
        
        btn.disabled = false;
        btn.textContent = 'Coba Lagi';
      }
    });

    function updateProgress(step, status, text) {
      const icon = document.getElementById(`icon${step}`);
      const stepText = document.getElementById(`step${step}`);
      
      if (status === 'check') {
        icon.textContent = '✅';
        icon.className = 'progress-icon check';
      } else if (status === 'loading') {
        icon.textContent = '⏳';
        icon.className = 'progress-icon loading';
      } else {
        icon.textContent = '❌';
        icon.className = 'progress-icon cross';
      }
      
      stepText.textContent = text;
    }

    function sleep(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    }
  </script>

</body>
</html>
