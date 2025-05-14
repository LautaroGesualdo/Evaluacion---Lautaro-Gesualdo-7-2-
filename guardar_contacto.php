<?php
// Conexión a la base de datos
$host = 'localhost';
$db = 'sitio_web';
$user = 'root';
$pass = ''; // tu contraseña de MySQL, si la tenés

$conn = new mysqli($host, $user, $pass, $db);

// Verificamos la conexión
if ($conn->connect_error) {
  die("Error de conexión: " . $conn->connect_error);
}

// Recibir datos del formulario
$nombre = $_POST['nombre'] ?? '';
$email = $_POST['email'] ?? '';
$mensaje = $_POST['mensaje'] ?? '';

// Validación básica
if ($nombre && $email && $mensaje) {
  $stmt = $conn->prepare("INSERT INTO contactos (nombre, email, mensaje) VALUES (?, ?, ?)");
  $stmt->bind_param("sss", $nombre, $email, $mensaje);
  
  if ($stmt->execute()) {
    echo "¡Mensaje enviado con éxito!";
  } else {
    echo "Error al guardar el mensaje.";
  }

  $stmt->close();
} else {
  echo "Todos los campos son obligatorios.";
}

$conn->close();
?>
