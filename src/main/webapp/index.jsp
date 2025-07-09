<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>MASS MOTOS - Venta Repuestos y Motocicletas</title>
  <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    <script src="js/carrito.js" defer></script>
</head>
<body>
  <!-- Header -->
  <header>
    <h1><strong><i>MASS MOTOS</i></strong></h1>
    <nav>
      <ul>
        <li><a href="index.jsp"><strong>INICIO</strong></a></li>
        <li><a href="repuestos.jsp"><strong>REPUESTOS</strong></a></li>
        <li><a href="motos.jsp"><strong>MOTOCICLETAS</strong></a></li>
        <li><a href="comunicacion.jsp"><strong>CONTACTO</strong></a></li>
        <li><a href="login.jsp" class="login-btn"><strong>INICIAR SESIÓN</strong></a></li>
      </ul>
    </nav>

    <!-- Carrito -->
    <div id="carrito-container">
      <button onclick="toggleCarrito()">🛒 Carrito (<span id="carrito-count">0</span>)</button>
      <div id="carrito-dropdown" style="display: none;">
        <ul id="carrito-items"></ul>
        <p id="total">Total: S/.0</p>
        <button onclick="vaciarCarrito()">Vaciar Carrito</button>
        <button onclick="confirmarCompra()">Confirmar Compra</button>
      </div>
    </div>

    <!-- Modal Recibo -->
    <div id="recibo-modal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color:rgba(0,0,0,0.5); z-index:9999;">
      <div style="background:white; margin:5% auto; padding:20px; border-radius:10px; width:90%; max-width:700px; position:relative;">
        <span onclick="cerrarModal()" style="position:absolute; top:10px; right:20px; cursor:pointer;">&times;</span>
        <div id="contenido-recibo"></div>
      </div>
    </div>
  </header>

  <!-- Inicio -->
  <section class="inicio">
    <div class="cont-inicio">
      <h1><i>MOTOCICLETAS DEL TIEMPO ACTUAL</i></h1>
      <p><strong><i>Las Mejores Motocicletas, Repuestos y Servicios de Taller al Mejor Precio</i></strong></p>
    </div>
  </section>
  <!-- Promociones -->
        <h2>PROMOCIONES DEL MES</h2>
    <div class="carrusel-container">
        <button class="carrusel-btn izquierda" onclick="moverCarrusel(-1)">&#10094;</button>
        <div class="carrusel">
            <div class="tar-prod">
                <a href="productos/motos honda/HONDA NAVI.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos honda/imagenes honda/navi.avif" alt="Producto destacado 1">
                    <h3>Motocicleta Honda Navi</h3>
                    <p>Cuando hablamos de la Honda Navi ,creemos que la seguridad que te brinda superará tus expectativas, además nuestro principal compromiso es tu seguridad y el sistema de suspensión está diseñado para cumplir a cabalidad, por eso incorpora Suspensión Telescópica en la parte Delantera y un Monoamortiguador en la parte Posterior con lo cual brinda el equilibrio, soporte y estabilidad perfecto, maximizando la confianza y la experiencia en el manejo.</p>
                    <p><strong>S/.6,538</strong></p>
                </a>
                <button onclick="agregarAlCarrito('HONDA NAVI', 6538)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a href="productos/motos bajaj/RS 200.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos bajaj/imagenes bajaj/rs200.avif" alt="Producto destacado 3">
                    <h3>Motocicleta Bajaj RS200</h3>
                    <p>Si buscas escarapelar el cuerpo con adrenalina, esta debe ser una firme candidata para tu garaje. Es una moto con cromosomas netamente deportivos, musculosa, corpulenta, atrevida, impetuosa, de alto desempeño.</p>
                    <p><strong>S/ 16,099</strong></p>
                </a>
                <button onclick="agregarAlCarrito('RS 200', 16099)">Agregar al Carrito</button>
            </div>
            <div class="tar-prod">
                <a href="productos/motos ssenda/DURO 250 TK.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos ssenda/imagenes ssenda/tk 250.avif" alt="Producto destacado 3">
                    <h3>Motocicleta ssenda Duro 250 tk</h3>
                    <p>La Ssenda Duro 250 TK es una motocicleta doble propósito de 250 cc diseñada para rendir tanto en ciudad como en terrenos off-road, gracias a su motor potente, suspensión reforzada y equipamiento completo que garantiza comodidad, estabilidad y seguridad en todo tipo de caminos.</p>
                    <p><strong>S/ 8,125</strong></p>
                </a>
                <button onclick="agregarAlCarrito('DURO 250 TK', 8125)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a href="productos/motos ssenda/SS300 X7.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos ssenda/imagenes ssenda/X7.jpg" alt="Producto destacado 3">
                    <h3>Motocicleta ssenda SS300 X7</h3>
                    <p>Siguiendo la línea de sus motos deportivas la marca Ssenda trae a las pistas la nueva SS300-X7 EFI una máquina hecha para correr, equipada con un motor de 300 cc, una caja de 6 velocidades, inyección electrónica y embrague con quickshifter o "cambios rápidos" transportando al piloto a un circuito de carreras por donde quiera que decida conducir.</p>
                    <p><strong>S/ 9,890</strong></p>
                </a>
                <button onclick="agregarAlCarrito('SS300 X7', 9890)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a href="productos/motos honda/CB 190 R 2.0.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos honda/imagenes honda/CB190.webp" alt="Producto destacado 3">
                    <h3>Motocicleta Honda CB190R 2.0 </h3>
                    <p>La Honda CB190R 2.0 es una motocicleta deportiva de 184.4 cc que ofrece un rendimiento equilibrado y un diseño atractivo. Destaca por su motor de 4 tiempos SOHC de 16.4 HP y 15.5 Nm de torque, su sistema de frenos ABS, y su diseño moderno con iluminación LED.</p>
                    <p><strong>S/ 11,597</strong></p>
                </a>
                <button onclick="agregarAlCarrito('CB190R 2.0', 11597)">Agregar al Carrito</button>
            </div>
            <!-- Duplicamos las tarjetas (esto permite el bucle infinito) -->
            <div class="tar-prod">
                <a href="productos/motos honda/HONDA NAVI.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos honda/imagenes honda/navi.avif" alt="Producto destacado 1">
                    <h3>Motocicleta Honda Navi</h3>
                    <p>Cuando hablamos de la Honda Navi ,creemos que la seguridad que te brinda superará tus expectativas, además nuestro principal compromiso es tu seguridad y el sistema de suspensión está diseñado para cumplir a cabalidad, por eso incorpora Suspensión Telescópica en la parte Delantera y un Monoamortiguador en la parte Posterior con lo cual brinda el equilibrio, soporte y estabilidad perfecto, maximizando la confianza y la experiencia en el manejo.</p>
                    <p><strong>S/.6,538</strong></p>
                </a>
                <button onclick="agregarAlCarrito('HONDA NAVI', 6538)">Agregar al Carrito</button>
            </div>
            
            <div class="tar-prod">
                <a href="productos/motos bajaj/RS 200.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos bajaj/imagenes bajaj/rs200.avif" alt="Producto destacado 3">
                    <h3>Motocicleta Bajaj RS200</h3>
                    <p>Si buscas escarapelar el cuerpo con adrenalina, esta debe ser una firme candidata para tu garaje. Es una moto con cromosomas netamente deportivos, musculosa, corpulenta, atrevida, impetuosa, de alto desempeño.</p>
                    <p><strong>S/ 16,099</strong></p>
                </a>
                <button onclick="agregarAlCarrito('RS 200', 16099)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a<a href="productos/motos ssenda/DURO 250 TK.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos ssenda/imagenes ssenda/tk 250.avif" alt="Producto destacado 3">
                    <h3>Motocicleta ssenda Duro 250 tk</h3>
                    <p>La Ssenda Duro 250 TK es una motocicleta doble propósito de 250 cc diseñada para rendir tanto en ciudad como en terrenos off-road, gracias a su motor potente, suspensión reforzada y equipamiento completo que garantiza comodidad, estabilidad y seguridad en todo tipo de caminos.</p>
                    <p><strong>S/ 8,125</strong></p>
                </a>
                <button onclick="agregarAlCarrito('DURO 250 TK', 8125)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a href="productos/motos ssenda/SS300 X7.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos ssenda/imagenes ssenda/X7.jpg" alt="Producto destacado 3">
                    <h3>Motocicleta ssenda SS300 X7</h3>
                    <p>Siguiendo la línea de sus motos deportivas la marca Ssenda trae a las pistas la nueva SS300-X7 EFI una máquina hecha para correr, equipada con un motor de 300 cc, una caja de 6 velocidades, inyección electrónica y embrague con quickshifter o "cambios rápidos" transportando al piloto a un circuito de carreras por donde quiera que decida conducir.</p>
                    <p><strong>S/ 9,890</strong></p>
                </a>
                <button onclick="agregarAlCarrito('SS300 X7', 9890)">Agregar al Carrito</button>
            </div>

            <div class="tar-prod">
                <a href="productos/motos honda/CB 190 R 2.0.jsp"> <!--enlazamos con la descripcion -->
                    <img src="productos/motos honda/imagenes honda/CB190.webp" alt="Producto destacado 3">
                    <h3>Motocicleta Honda CB190R 2.0 </h3>
                    <p>La Honda CB190R 2.0 es una motocicleta deportiva de 184.4 cc que ofrece un rendimiento equilibrado y un diseño atractivo. Destaca por su motor de 4 tiempos SOHC de 16.4 HP y 15.5 Nm de torque, su sistema de frenos ABS, y su diseño moderno con iluminación LED.</p>
                    <p><strong>S/ 11,597</strong></p>
                </a>
                <button onclick="agregarAlCarrito('CB190R 2.0', 11597)">Agregar al Carrito</button>
            </div>
        </div>
        <button class="carrusel-btn derecha" onclick="moverCarrusel(1)">&#10095;</button>
    </div>

  <!-- Script carrusel -->
  <script src="js/carrusel.js" defer></script>

  <!-- Botones WhatsApp y Emergencia -->
  <div class="enviar-mensaje">
    <button>
      <a href="https://wa.me/51934746375" class="whatsapp">
        <img src="img w/logos--whatsapp-icon.svg" alt="WhatsApp" width="30" height="30">
        <strong>Enviar mensaje</strong>
      </a>
    </button>
  </div>

  <!-- Footer -->
  <footer>
    <div class="footer-content">
      <div class="footer-section">
        <h3>MassMotos</h3>
        <p>Tu moto, tu estilo, tu camino</p>
      </div>
      <div class="footer-section">
        <h3>CONTACTO</h3>
        <p>📍 Ica, Perú</p>
        <p>📞 934-746-375</p>
        <p>✉️ info-MassMotos@hotmail.com</p>
      </div>
      <div class="footer-section">
        <h3>SÍGUENOS</h3>
        <div class="social-links">
          <a href="#">Facebook</a>
          <a href="#">Instagram</a>
          <a href="#">Twitter</a>
        </div>
      </div>
    </div>
    <br><br>
    <marquee>&copy; 2025 MassMotos. Todos los derechos reservados.</marquee>
  </footer>
</body>
</html>
