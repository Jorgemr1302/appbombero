<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de Horas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 40px;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            text-transform: uppercase;
            margin-bottom: 20px;
            border-bottom: 2px solid black;
            display: inline-block;
            padding-bottom: 5px;
        }

        .reporte-container {
            width: 80%;
            margin: 0 auto;
            text-align: left;
        }

        .datos-trabajador {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            font-size: 14px;
        }

        td {
            font-size: 14px;
        }

        .total-horas {
            font-size: 16px;
            font-weight: bold;
            margin-top: 15px;
            text-align: right;
        }
    </style>
</head>
<body>

    <h1>Reporte de Horas</h1>
    <p class="datos-trabajador">
                Del <strong>{{$fecha1}}</strong> al  <strong>{{$fecha2}}</strong>
    </p>
    @foreach ($resultados as $resultado)
        <div class="reporte-container">
            <p class="datos-trabajador">
                Nombre: {{ ucfirst($resultado['personal']->nombre_bombero) }} {{ ucfirst($resultado['personal']->apellido_bombero) }} <br>
                Código: <strong>{{ $resultado['personal']->cod_bombero }}</strong>
            </p>

            <table>
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>Fecha</th>
                        <th>Entrada</th>
                        <th>Salida</th>
                        <th>Horas Trabajadas</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($resultado['detalle_horas'] as $index => $detalle)
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td>{{ $detalle['fecha'] }}</td>
                            <td>{{ $detalle['entrada'] }}</td>
                            <td>{{ $detalle['salida'] }}</td>
                            <td>{{ $detalle['horas_trabajadas'] }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <p class="total-horas">
                Total Horas Trabajadas: <strong>{{ $resultado['total_horas'] }}</strong>
            </p>
        </div>
    @endforeach

</body>
</html>
