const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'
  ];
  
  function crearTablero() {
    const tablero = document.getElementById("tablero");
  
    for (let i = 0; i < 2; i++) { // 2 filas
      const fila = document.createElement("div");
      fila.classList.add("fila");
  
      for (let j = 0; j < 3; j++) { // 3 casillas por fila
        const casilla = document.createElement("div");
        casilla.classList.add("casilla");
  
  
        casilla.addEventListener("mouseover", function () {
          if (!casilla.querySelector("img")) {
            textoHover.style.display = "block";
          }
        });
  
        casilla.addEventListener("mouseout", function () {
          textoHover.style.display = "none";
        });
  
        casilla.addEventListener("click", function () {
          if (!casilla.querySelector("img")) {
            const img = document.createElement("img");
            const numero = Math.floor(Math.random() * imagenes.length);
            img.src = imagenes[numero];
            img.classList.add("imagen");
            casilla.appendChild(img);
            textoHover.style.display = "none";
          } else {
            const numero = Math.floor(Math.random() * imagenes.length);
            casilla.querySelector("img").src = imagenes[numero];
          }
          comprobarTableroCompleto();
        });
  
        fila.appendChild(casilla);
      }
  
      tablero.appendChild(fila);
    }
  }

  function comprobarTableroCompleto() {
    const casillas = document.querySelectorAll(".casilla");
    const todasTienenImagen = Array.from(casillas).every(casilla => casilla.querySelector("img"));
  
    if (todasTienenImagen) {
      document.body.style.backgroundImage = "url('https://www.somoslibres.org/images/2021/04/30/linuxgratis.jpg')"; 
      document.body.style.backgroundSize = "cover";
      document.body.style.backgroundRepeat = "no-repeat";
      document.body.style.backgroundPosition = "center";
    }
  }
  
  
  window.onload = crearTablero;
  