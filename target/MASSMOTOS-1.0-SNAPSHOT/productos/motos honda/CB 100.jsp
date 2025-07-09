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
        <img src="imagenes honda/cb100.jpg" alt="HONDA CB100">
        <div class="contenido">
            <h2>HONDA CB100</h2>
            <ul>
                <li>La nueva Honda CB100 es una excelente opción para quienes buscan una moto de bajo cilindraje ideal para trabajar y desplazarse en la ciudad. Ofrece un rendimiento eficiente, arranque instantáneo, autonomía ampliada con su tanque de 9 litros, frenado confiable y comodidad para largas jornadas.</li>
            </ul>
            <ul>
                <h3>Especificaciones detalladas:</h3>
                <h3>MOTOR:</h3>
                <li>
                    <p>✔ Tipo: 1 cilindro</p>
                    <p>✔ Cilindrada: 100 cc</p> 
                    <p>✔ Potencia (Hp): 6.91 HP</p>
                    <p>✔ Torque máximo (Nm/rpm): 7.5 Nm / 4,500 RPM</p>
                    <p>✔ Transmisión: 4 velocidades</p>
                    <p>✔ Sistema de arranque: Eléctrico y Patada</p>
                </li> 
                <h3>CHASIS Y FRENOS:</h3>       
                <li>
                    <p>✔ Freno (Del.; post.): Tambor Mecánico</p>
                    <p>✔ Suspensión delantera: Horquillas telescópicas</p>
                    <p>✔ Suspensión posterior: Doble amortiguador lateral</p>
                    <p>✔ Capacidad de tanque: 2.37 Galones</p>
                </li>
            </ul>
            <p id="price">Precio: S/.5,810</p>
            <button onclick="agregarAlCarrito('HONDA CB100', 5810)">Agregar al Carrito</button>
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
