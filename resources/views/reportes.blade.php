<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario PDF</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f2f5;
        }

        header {
            background-color: #e74c3c; /* Rojo para estación de bomberos */
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav-btn {
            background-color: #f39c12; /* Naranja para el botón de salir */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .nav-btn:hover {
            background-color: #f1c40f;
        }

        .user-name {
            font-size: 1.2em;
            font-weight: bold;
        }

        .form-container {
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            text-align: center;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-container {
            margin-bottom: 20px;
            text-align: center; /* Centramos el texto y los elementos */
            width: 100%;
        }

        .input-container label {
            font-size: 1em;
            margin-bottom: 5px;
            display: block;
            color: #333;
            text-align: center; /* Centrar la etiqueta */
        }

        .input-field {
            width: 70%; /* Ajustamos el ancho de las cajas */
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .input-field:focus {
            border-color: #007bff;
            outline: none;
        }

        .submit-btn {
            background-color: #28a745;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.1em;
            width: 100%;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #218838;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
            color: #777;
        }

        .icon {
            margin-right: 8px;
        }
    </style>
</head>
<body>

    <!-- Barra de navegación -->
    <header>
        <button class="nav-btn" onclick="salir()">
            <span class="icon">🚪</span>Salir
        </button>
        <div class="user-name">Administrador</div>
    </header>

    <!-- Formulario para generar PDF -->
    <div class="form-container">
        <h2>Generar Reporte en PDF</h2>
        <form action="{{ route('generarpdf') }}" method="POST" target="_blank">
            @csrf
            <div class="input-container">
                <label for="fechaInicio">Fecha de Inicio</label>
                <input type="date" name="fecha_inicio" id="fechaInicio" class="input-field" required>
            </div>
            <div class="input-container">
                <label for="fechaFin">Fecha Final</label>
                <input type="date" id="fechaFin" name="fecha_fin" class="input-field" required>
            </div>
            <button type="submit" class="submit-btn" onclick="generarPDF()" >Generar PDF</button>
        </form>
    </div>

    <!-- Pie de página -->
    <div class="footer">
        <p>&copy; 2025 - Todos los derechos reservados</p>
    </div>

    <script>
        // Función para simular el botón de "Salir"
        function salir() {
            alert('¡Has cerrado sesión!');
            // Aquí puedes redirigir a otra página si es necesario
        }

        // Función para generar el PDF
        function generarPDF() {
            const fechaInicio = document.getElementById('fechaInicio').value;
            const fechaFin = document.getElementById('fechaFin').value;

            if (!fechaInicio || !fechaFin) {
                alert('Por favor, completa ambas fechas.');
                return;
            }

            const doc = new jsPDF();
            doc.text('Reporte Generado', 10, 10);
            doc.text('Fecha de Inicio: ' + fechaInicio, 10, 20);
            doc.text('Fecha de Fin: ' + fechaFin, 10, 30);
            doc.save('reporte.pdf');
        }
    </script>

    <!-- Librería jsPDF para generar el PDF -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
</body>
</html>
