<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Mass Motos</title>

    <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    <script src="js/carrito.js" defer></script>

</head>
<body>
    <!-- Header -->
    <header>
        <h1><i><strong>MASS MOTOS</strong></i></h1>
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
            <button onclick="toggleCarrito()"><i>🛒 Carrito</i> (<span id="carrito-count">0</span>)</button>
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
                <span onclick="cerrarModal()" style="position:absolute; top:10px; right:20px; cursor:pointer; font-weight:bold; font-size:20px;">&times;</span>
                <div id="contenido-recibo"></div>
            </div>
        </div>
    </header>

    <!-- Formulario de Inicio de Sesión -->
    <main class="page-content">
        <div class="login-container">
            <h1>Iniciar Sesión</h1>
            <form id="loginForm" method="post" action="${pageContext.request.contextPath}/LoginServlet">
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" placeholder="ejemplo@correo.com" required>

                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" placeholder="Ingrese su contraseña" required>

                <button type="submit" class="login-btn">Ingresar</button>
            </form>
            <p class="register-link">
                ¿No tienes una cuenta? <a href="register.jsp">Regístrate aquí</a>.
            </p>
        </div>
    </main>

    <!-- Botones de WhatsApp y Emergencia -->
    <div class="enviar-mensaje">
        <a href="https://wa.me/51934746375" class="whatsapp">
            <img src="img w/logos--whatsapp-icon.svg" alt="WhatsApp" style="width: 30px; height: 30px;">
            <strong>Enviar mensaje</strong>
        </a>
    </div>

    <!-- Footer -->
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
