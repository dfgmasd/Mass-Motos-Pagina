<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Detalles de Productos - Mass Motos</title>
    <link href="../../CSS/style.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/carrito.js" defer></script> 
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

        <!-- Modal para recibo -->
        <div id="recibo-modal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color:rgba(0,0,0,0.5); z-index:9999;">
            <div style="background:white; margin:5% auto; padding:20px; border-radius:10px; width:90%; max-width:700px; position:relative;">
                <span onclick="cerrarModal()" style="position:absolute; top:10px; right:20px; cursor:pointer; font-weight:bold; font-size:20px;">&times;</span>
                <div id="contenido-recibo"></div>
            </div>
        </div>
    </header>  

    <!-- Contenido principal -->
    <main>
        <img src="${pageContext.request.contextPath}/imagenes/motos/bajaj/pulsar%20ns160.png" alt="PULSAR NS160">
        <div class="contenido">
            <h2>PULSAR NS160</h2>
            <ul>
                <li>Te presentamos la Pulsar NS160. Desarrolla una potencia de 14.8Hp@8500RPM y un torque de 14.12Nm@6000RPM. Cuenta con un motor monocilíndrico de 160.3cc, enfriamiento por aceite y alimentación inyectada. Además, tiene suspensión delantera telescópica y monoshock con nitrox posterior. Ahora con doble freno de disco y llantas más anchas.</li>
            </ul>
            <ul>
                <h3>Especificaciones detalladas:</h3>
                <h3>MOTOR:</h3>
                <li>
                    <p>✔ Tipo: Monocilíndrico</p>
                    <p>✔ Cilindrada (cc): 160.3 cc</p> 
                    <p>✔ Potencia (Hp/rpm): 14.8 @ 8500 (HP@RPM)</p>
                    <p>✔ Torque máximo (Nm/rpm): 14.12 @ 6000 (Nm@RPM)</p>
                    <p>✔ Transmisión: 5 velocidades</p>
                    <p>✔ Sistema de arranque: Eléctrico</p>
                </li> 
                <h3>CHASIS Y FRENOS:</h3>       
                <li>
                    <p>✔ Freno delantero: Disco 240 mm</p>
                    <p>✔ Freno posterior: Disco 230 mm</p>
                    <p>✔ Suspensión (del. / post.): Telescópica / Monoshock Nitrox</p>
                    <p>✔ Capacidad de tanque: 12 Litros</p>
                </li>
            </ul>
            <p id="price">Precio: S/ 11,900</p>
            <button onclick="agregarAlCarrito('PULSAR NS160', 11900)">Agregar al Carrito</button>
        </div>
    </main>

    <!-- Pie de página -->
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
