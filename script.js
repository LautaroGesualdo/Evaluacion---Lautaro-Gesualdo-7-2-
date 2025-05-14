// ==== MODO OSCURO/CLARO ====
document.addEventListener("DOMContentLoaded", () => {
  const toggleBtn = document.getElementById("toggleMode");
  const body = document.body;

  // Cargar preferencia almacenada
  const savedMode = localStorage.getItem("mode");
  if (savedMode === "dark") {
    body.classList.add("dark-mode");
    toggleBtn.checked = true;
  }

  // Cambiar tema al hacer clic
  toggleBtn.addEventListener("change", () => {
    body.classList.toggle("dark-mode");
    localStorage.setItem("mode", body.classList.contains("dark-mode") ? "dark" : "light");
  });

  // ==== MÚSICA DE FONDO ====
  const musicToggle = document.getElementById("musicToggle");
  if (musicToggle) {
    const music = new Audio();
    music.src = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"; // URL de ejemplo
    music.loop = true;
    music.volume = 0.5;

    musicToggle.addEventListener("click", () => {
      if (music.paused) {
        music.play().catch(e => {
          console.error("Error reproduciendo música:", e);
          alert("Tu navegador bloqueó la reproducción automática. Intenta nuevamente.");
        });
        musicToggle.textContent = "🔊 Música ON";
      } else {
        music.pause();
        musicToggle.textContent = "🔇 Música OFF";
      }
    });
  }

  // ==== VALIDACIÓN DE FORMULARIO ====
  const form = document.getElementById("formContacto");
  if (form) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      const nombre = document.getElementById("nombre");
      const correo = document.getElementById("correo");
      const mensaje = document.getElementById("mensaje");

      if (nombre.value.trim() === "" || correo.value.trim() === "" || mensaje.value.trim() === "") {
        alert("Por favor, completa todos los campos.");
        return;
      }

      // Simple feedback visual
      alert("Mensaje enviado correctamente. ¡Gracias por contactarnos!");
      form.reset();
    });
  }

  // ==== ANIMACIÓN EN SCROLL ====
  const fadeElements = document.querySelectorAll(".fade-in");
  
  if (fadeElements.length > 0) {
    const appearOnScroll = new IntersectionObserver(
      (entries, observer) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add("appear");
            observer.unobserve(entry.target);
          }
        });
      },
      {
        threshold: 0.1,
      }
    );

    fadeElements.forEach(el => {
      appearOnScroll.observe(el);
    });
  }
});