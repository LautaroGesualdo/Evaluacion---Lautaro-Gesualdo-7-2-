README - Sitio Web de Fotografía y Filmación 4K
📸 Descripción del Proyecto
Este sitio web dinámico está desarrollado para un negocio de Fotografía y Filmación de Eventos en 4K. Incluye frontend moderno (HTML, CSS, JavaScript, Bootstrap 5) y backend funcional con PHP y almacenamiento local a través de LocalStorage. Permite a los visitantes conocer los servicios ofrecidos, ver la galería de trabajos, leer testimonios y contactar mediante un formulario.
🛠️ Tecnologías Utilizadas
- HTML5
- CSS3
- JavaScript
- PHP
- LocalStorage
- MySQL (opcional)
✨ Funcionalidades
- Diseño responsive para todo tipo de dispositivos.
- Formulario de contacto funcional con validación y almacenamiento en base de datos.
- Galería de imágenes y video de presentación.
- Sección de servicios detallados.
- Testimonios de clientes.
- Modo claro/oscuro con texto blanco en el header en modo oscuro.
- LocalStorage para guardar los mensajes si no se utiliza base de datos.
⚙️ Instrucciones de Uso
1. Clona o descarga este repositorio.
2. Coloca todos los archivos en el servidor local (ej: XAMPP en htdocs).
3. Crea una base de datos llamada `sitio_web` y ejecuta la siguiente consulta SQL:

   ```sql
   CREATE TABLE IF NOT EXISTS contactos (
     id INT AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(100),
     email VARCHAR(100),
     mensaje TEXT
   );
   ```
4. Asegúrate de que el archivo `guardar_contacto.php` esté correctamente configurado para guardar los datos recibidos.
📬 Sección de Contacto (HTML)
Formulario HTML integrado correctamente para enviar datos al backend:
<form id="formContacto" method="POST" action="guardar_contacto.php">
  <input type="text" name="nombre" required>
  <input type="email" name="email" required>
  <textarea name="mensaje" required></textarea>
  <button type="submit">Enviar</button>
</form>
💻 Backend (guardar_contacto.php)
Código PHP para guardar datos en la base de datos:
<?php
$conn = new mysqli('localhost', 'root', '', 'sitio_web');
if ($conn->connect_error) die('Error: ' . $conn->connect_error);
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$mensaje = $_POST['mensaje'];
$stmt = $conn->prepare('INSERT INTO contactos (nombre, email, mensaje) VALUES (?, ?, ?)');
$stmt->bind_param('sss', $nombre, $email, $mensaje);
$stmt->execute();
$stmt->close();
$conn->close();
?>
