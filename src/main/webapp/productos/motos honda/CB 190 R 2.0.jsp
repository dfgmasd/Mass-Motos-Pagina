<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
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
        <img src="imagenes honda/CB190.webp" alt="HONDA CB190 2.0 ABS">
        <div class="contenido">
            <h2>HONDA CB190R 2.0</h2>
            <ul>
                <li>La nueva CB190R ahora trae un nuevo panel digital, con indicador de marcha, consumo en tiempo real, entre otros puntos. Asimismo, cuenta con un motor actualizado que entrega la potencia y torque perfectos para hacer que tu viaje sea divertido en todo momento.</li>
            </ul>
            <ul>
                <h3>Especificaciones detalladas:</h3>
                <h3>MOTOR: </h3>
                <li>
                    <p>✔ Tipo: SOHC / SISTEMA DE INYECCIÓN ELECTRÓNICA (PGM FI) </p>
                    <p>✔ Cilindrada: 100 cc  </p> 
                    <p>✔ Potencia (Hp/Rpm): 16.4 HP @ 8,500 RPM</p>
                    <p>✔ Torque máximo (Nm/rpm): 15.5 Nm @ 6,000 RPM</p>
                    <p>✔ Transmisión: 5 velocidades</p>
                    <p>✔ Sistema de arranque: Eléctrico</p>
                </li> 
                <h3>CHASIS Y FRENOS :</h3>       
                <li>
                    <p>✔ Frenos: Discos delanteros y traseros, sistema ABS en el delantero</p>
                    <p>✔ Suspensión delantera: Horquilla telescópica invertida adelante </p>
                    <p>✔ Suspensión posterior: brazo basculante con mono amortiguador atrás </p>
                    <p>✔ Capacidad de tanque: 12 Litros</p>
                </li>
            </ul>
            <p id="price">Precio: S/ 11,597</p>
            <button onclick="agregarAlCarrito('HONDA CB190R 2.0 ABS', 11597)">Agregar al Carrito</button>
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
                <h3>SIGUENOS</h3>
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
