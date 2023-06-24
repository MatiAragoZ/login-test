<!DOCTYPE html>
<html>
<head>
    <title>Ingreso</title>
    <style>
        body {
            background-color: #f1f1f1; /* Establece el color de fondo del cuerpo */
            font-family: Arial, sans-serif; /* Define la fuente del texto */
            text-align: center; /* Centra el contenido del cuerpo horizontalmente */
        }

        h1 {
            color: #333; /* Establece el color del encabezado */
            padding-top: 50px; /* Agrega un espacio superior al encabezado */
        }

        form {
            margin-top: 30px; /* Agrega un margen superior al formulario */
            display: flex; /* Utiliza un dise�o de flexbox para alinear los elementos verticalmente */
            flex-direction: column; /* Establece la direcci�n de los elementos como columna */
            align-items: center; /* Centra los elementos horizontalmente */
        }

        label {
            margin-bottom: 10px; /* Agrega un margen inferior a las etiquetas */
            font-weight: bold; /* Establece el peso de la fuente en negrita */
            color: #555; /* Establece el color del texto de las etiquetas */
        }

        input[type="text"],
        input[type="password"] {
            width: 250px; /* Establece el ancho de los campos de entrada */
            padding: 10px; /* Agrega un espacio interno a los campos de entrada */
            border: 1px solid #ddd; /* Establece un borde de 1 p�xel con un color gris claro */
            border-radius: 5px; /* Agrega esquinas redondeadas a los campos de entrada */
            margin-bottom: 20px; /* Agrega un margen inferior a los campos de entrada */
        }

        input[type="submit"] {
            background-color: #007bff; /* Establece el color de fondo del bot�n de env�o */
            color: #fff; /* Establece el color del texto del bot�n de env�o */
            border: none; /* Elimina el borde del bot�n de env�o */
            padding: 10px 20px; /* Establece el relleno (espacio interno) del bot�n de env�o */
            border-radius: 5px; /* Agrega esquinas redondeadas al bot�n de env�o */
            cursor: pointer; /* Cambia el cursor al pasar sobre el bot�n de env�o */
            transition: background-color 0.3s ease; /* Agrega una transici�n suave para el cambio de color de fondo */
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Cambia el color de fondo del bot�n de env�o al pasar el cursor sobre �l */
        }
    </style>
</head>
<body>
    <h1>Ingreso</h1> <!-- Encabezado principal -->
    <form action="login" method="post"> <!-- Formulario de ingreso -->
        <label for="username">Usuario:</label> <!-- Etiqueta para el campo de usuario -->
        <input type="text" name="username" id="username" required><br> <!-- Campo de entrada para el usuario -->
        <label for="password">Contrase�a:</label> <!-- Etiqueta para el campo de contrase�a -->
        <input type="password" name="password" id="password" required><br> <!-- Campo de entrada para la contrase�a -->
        <input type="submit" value="Ingresar"> <!-- Bot�n de env�o -->
    </form>
</body>
</html>


