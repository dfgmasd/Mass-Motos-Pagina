<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Detalles de Productos - Mass Motos</title>
    <link href="../../CSS/style.css" rel="stylesheet" type="text/css"/>
    <script src="../../js/carrito.js" defer></script> 
</head>
<body>
    <!-- barra de apartados -->
    <header>
        <h1>MASS MOTOS</h1>
        <nav>
            <ul> 
                <li><a href="../../index.jsp"><strong>INICIO</strong></a></li>
                <li><a href="../../repuestos.jsp"><strong>REPUESTOS</strong></a></li> 
                <li><a href="../../motos.jsp"><strong>MOTOCICLETAS</strong></a></li>
                <li><a href="../../comunicacion.jsp"><strong>CONTACTO</strong></a></li>
                <li><a href="../../login.jsp" class="login-btn"><strong>INICIAR SESIÓN</strong></a></li>
            </ul>
        </nav>

        <!-- Carrito de compras -->
        <div id="carrito-container">
            <button onclick="toggleCarrito()"><i>🛒 Carrito</i> (<span id="carrito-count">0</span>)</button>
            <div id="carrito-dropdown" style="display: none;">
                <ul id="carrito-items"></ul>
                <p id="total">Total: S/.0</p>
                <button onclick="vaciarCarrito()">Vaciar Carrito</button>
                <button onclick="confirmarCompra()">Confirmar Compra</button>
            </div>
        </div>

        <!-- Modelo para recibo -->
        <div id="recibo-modal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color:rgba(0,0,0,0.5); z-index:9999;">
            <div style="background:white; margin:5% auto; padding:20px; border-radius:10px; width:90%; max-width:700px; position:relative;">
                <span onclick="cerrarModal()" style="position:absolute; top:10px; right:20px; cursor:pointer; font-weight:bold; font-size:20px;">&times;</span>
                <div id="contenido-recibo"></div>
            </div>
        </div>
    </header>  

    <main>
        <img src="imagenes honda/cb125 twister.avif" alt="HONDA CB125 TWISTER">
        <div class="contenido">
            <h2>HONDA CB125 TWISTER</h2>
            <ul>
                <li>La CB125F Twister sorprende con un diseño deportivo que te hará ganar mucho más que miradas, autonomía superior para llegar más lejos y toda la calidad que caracteriza a Honda.</li>
            </ul>
            <ul>
                <h3>Especificaciones detalladas:</h3>
                <h3>MOTOR: </h3>
                <li>
                    <p>✔ Tipo: OCH 4T, 2 válvulas refrigerado por aire </p>
                    <p>✔ Cilindrada: 124,8 cc  </p> 
                    <p>✔ Potencia (Hp/Rpm): 8,5 hp a 7000 rpm</p>
                    <p>✔ Torque máximo (Nm/rpm): 10,1 Nm a 5000 rpm</p>
                    <p>✔ Transmisión: 4 velocidades</p>
                    <p>✔ Sistema de arranque: Eléctrico y Patada</p>
                </li> 
                <h3>CHASIS Y FRENOS :</h3>       
                <li>
                    <p>✔ Freno delantero: Disco simple hidráulico perforado 240mm</p>
                    <p>✔ Freno posterior: Tambor mecánico 130mm</p>
                    <p>✔ Suspensión delantera: Horquilla Telescópica 116mm </p>
                    <p>✔ Suspensión posterior: Doble amortiguación Nitrox</p>
                    <p>✔ Capacidad de tanque: 10.1 Litros</p>
                </li>
            </ul>
            <p id="price">Precio: S/.7,068</p>
            <button onclick="agregarAlCarrito('HONDA CB125 TWISTER', 7068)">Agregar al Carrito</button>
        </div>
    </main>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>MASS MOTOS</h3>
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
        <marquee>&copy; 2025 MASS MOTOS. Todos los derechos reservados.</marquee>
    </footer>
</body>
</html>

