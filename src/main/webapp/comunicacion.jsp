<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contacto - MassMotos</title>
    <!-- En JSP es recomendable usar rutas relativas a la raíz del proyecto -->
    <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    <script src="js/carrito.js" defer></script> <!--Incluir carrito.js -->
</head>

<body>
    <header>
        <h1><i><strong>MASS MOTOS</strong></i></h1>
        <nav>
            <ul>
                <li><a href="index.jsp"><i><strong>INICIO</strong></i></a></li>
                <li><a href="repuestos.jsp"><i><strong>REPUESTOS</strong></i></a></li>
                <li><a href="motos.jsp"><i><strong>MOTOCICLETAS</strong></i></a></li>
                <li><a href="comunicacion.jsp"><i><strong>CONTACTO</strong></i></a></li>
                <li><a href="login.jsp" class="login-btn"><i><strong>INICIAR SESIÓN</strong></i></a></li>
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

    <!-- panel de contacto -->
    <!-- panel de contacto -->
<section>
    <h2>Contacto</h2>
    <p>Si tienes alguna consulta, puedes ponerte en contacto con nosotros a través de nuestro correo: 
       <strong>info-MassMotos@hotmail.com</strong></p>
    <p>O déjanos un mensaje, con gusto te atenderemos en breves</p>
    <br>

    <!-- formulario de contacto con EmailJS -->
    <form id="formContacto">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>

        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" required>

        <label for="mensaje">Mensaje:</label>
        <textarea id="mensaje" name="mensaje" required></textarea>

        <!-- botón enviar mensaje -->
        <button type="submit">Enviar</button>
    </form>

    <!-- mensaje de estado -->
    <p id="estado-envio" style="font-weight: bold; margin-top: 10px;"></p>
</section>

<!-- Script EmailJS -->
<script src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
<script>
    (function(){
        emailjs.init("0hr_4gizBE0GZikCg"); // 👈 Reemplaza con tu Public Key de EmailJS
    })();

    document.getElementById('formContacto').addEventListener('submit', function(event) {
        event.preventDefault(); // Evitar recarga de página

        emailjs.sendForm('service_v7z7yd5', 'template_mosl26s', this) // 👈 Reemplaza con tus valores
            .then(function() {
                document.getElementById('estado-envio').textContent = "✅ Mensaje enviado correctamente.";
                document.getElementById('formContacto').reset(); // Limpiar formulario
            }, function(error) {
                document.getElementById('estado-envio').textContent = "❌ Error al enviar el mensaje. Intenta más tarde.";
                console.error("Error:", error);
            });
    });
</script>

            
        <br>
        <p>Visítanos en nuestra tienda física en:</p>
        <br>
        
        
        
        <!-- dirección del Google Maps -->
        <address>
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d21751.27070567659!2d-75.73512156982606!3d-14.084540079388328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1725684156785!5m2!1ses-419!2spe"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </address>
    </section>

    <!-- botones: ENVIAR MENSAJE Y EMERGENCIA -->
    <div class="enviar-mensaje">
        <button>
            <a href="https://wa.me/51934746375" class="whatsapp" target="_blank" rel="noopener noreferrer">
                <img src="img w/logos--whatsapp-icon.svg" alt="WhatsApp" style="width: 30px; height: 30px;">
                <strong>Enviar mensaje</strong>
            </a>
        </button>
    </div>

    <!-- diseño del footer -->
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
        <marquee>&copy; 2025 Mass Motos. Todos los derechos reservados.</marquee>
    </footer>
</body>
</html>
