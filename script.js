<script>
/* ===== ELEMENT ===== */
const audio     = document.getElementById("audio");
const lines     = document.querySelectorAll(".lyrics p");
const lyricsBox = document.getElementById("lyrics");

const nextBtn = document.getElementById("nextBtn");
const likeBtn = document.getElementById("likeBtn");
const favBtn  = document.getElementById("favBtn");

/* ===== DATA LAGU SAAT INI ===== */
const currentTrack = {
  title: document.title,
  page: window.location.pathname
};

/* ===== PLAYLIST ===== */
const playlist = [
  { page: "anugerah.html" },
  { page: "saktane2.html" },
  { page: "Nanti Kita Seperti Ini.html" }
  { page: "Cintanya Aku.html" }
];

let currentSong = playlist.findIndex(p => currentTrack.page.includes(p.page));
if(currentSong < 0) currentSong = 0;

/* ===== LIRIK AUTO SCROLL ===== */
audio.addEventListener("timeupdate", () => {
  const time = audio.currentTime;

  lines.forEach((line, i) => {
    const start = Number(line.dataset.time);
    const next  = Number(lines[i + 1]?.dataset.time ?? 999);

    if (time >= start && time < next) {
      lines.forEach(l => l.classList.remove("active"));
      line.classList.add("active");

      lyricsBox.scrollTo({
        top: line.offsetTop - lyricsBox.clientHeight / 2,
        behavior: "smooth"
      });
    }
  });
});

/* ===== NEXT SONG ===== */
function nextSong(){
  currentSong++;
  if(currentSong >= playlist.length) currentSong = 0;
  window.location.href = playlist[currentSong].page;
}

nextBtn?.addEventListener("click", nextSong);
audio.addEventListener("ended", nextSong);

/* ===== LIKE SYSTEM ===== */
likeBtn?.addEventListener("click", () => {
  likeBtn.classList.toggle("active");
  likeBtn.textContent =
    likeBtn.classList.contains("active") ? "❤️" : "🤍";
});

/* ===== FAVORITE (SAVE TO LIBRARY) ===== */
favBtn?.addEventListener("click", () => {
  let library = JSON.parse(localStorage.getItem("mytube_library")) || [];

  const exists = library.find(l => l.page === currentTrack.page);

  if(exists){
    library = library.filter(l => l.page !== currentTrack.page);
    favBtn.textContent = "☆";
    favBtn.classList.remove("active");
  }else{
    library.push(currentTrack);
    favBtn.textContent = "⭐";
    favBtn.classList.add("active");
  }

  localStorage.setItem("mytube_library", JSON.stringify(library));
});

/* ===== LOAD FAVORITE STATE ===== */
(function(){
  const library = JSON.parse(localStorage.getItem("mytube_library")) || [];
  const exists = library.find(l => l.page === currentTrack.page);

  if(exists && favBtn){
    favBtn.textContent = "⭐";
    favBtn.classList.add("active");
  }
})();
</script>