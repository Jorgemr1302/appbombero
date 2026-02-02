<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Sistema V1.0</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/Register-form.css">
    <link rel="stylesheet" href="assets/css/Table-with-search.css">
    <link rel="stylesheet" href="assets/css/VentasPro-Login.css">
    <style>
        /* Estilo para centrar el contenido dentro del navbar */
        .navbar .container-fluid {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Asegurar que el reloj esté centrado */
        .navbar .clock {
            font-size: 18px;
            color: white;
            font-weight: bold;
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }

        .navbar .navbar-brand {
            text-align: left;
            flex-grow: 1;
        }
    </style>
</head>

<body>

    <div id="loginadmin" class="modal fade" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="height: 62px;">
                    <h4 class="modal-title">Login Administrador</h4>
                </div>
                <div class="modal-body">
                    <form class="rg-form" style="margin-top: -19px;" action="{{ route('ingresaradmin') }}" method="POST">
                        @csrf
                        <label><i class="fa fa-envelope"></i><strong> Email:</strong></label>
                        <input class="form-control" name="email" type="text" />
                        <label><i class="fa fa-key"></i><strong> Contraseña:</strong></label>
                        <input class="form-control" name="password" type="password" />
                </div>
                <div class="modal-footer"><button class="btn btn-danger" type="button" data-bs-dismiss="modal">Cerrar</button><button class="btn btn-success" type="submit">Ingresar</button></div>
            </div>
        </div></form>
    </div>


    <div class="modal fade" role="dialog" tabindex="-1" id="registrar">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="rf-register-form">
                        <form class="rg-form" style="margin-top: -19px;" action="{{ route('agregarbombero') }}" method="POST">
                            @csrf
                            <h2><i class="fa fa-address-book"></i>&nbsp;Registrar</h2>
                            <div class="rf-input-container" style="margin-top: 18px;"><i class="fa fa-star fa fa-user rf-icon" style="font-size: 21px;"></i><input class="form-control rf-input-field" type="text" name="nombre_bombero" placeholder="Nombres" required></div>
                            <div class="rf-input-container"><i class="fa fa-id-card fa fa-envelope rf-icon" style="font-size: 21px;"></i><input class="form-control rf-input-field" type="text" name="apellido_bombero" placeholder="Apellidos" required></div>
                            <div class="rf-input-container"><i class="fa fa-graduation-cap fa fa-envelope rf-icon" style="font-size: 21px;"></i><select class="form-select" name="grado_bombero" required>
                                    <option value="">Elije tu Grado</option>
                                    <option value="Seccionario">Seccionario</option>
                                    <option value="Sub. Teniente">Sub. Teniente</option>
                                    <option value="Teniente">Teniente</option>
                                    <option value="Capitán">Capitán</option>
                                    <option value="Teniente Brigadier">Teniente Brigadier</option>
                                    <option value="Brigadier">Brigadier</option>
                                    <option value="Brigadier Mayor">Brigadier Mayor</option>
                                    <option value="Brigadier General">Brigadier General</option>
                                </select></div>
                            <div class="rf-input-container"><i class="fa fa-keyboard-o fa fa-envelope rf-icon" style="font-size: 21px;"></i><input class="form-control rf-input-field" type="text" placeholder="Código" name="cod_bombero" required></div>
                            <div class="rf-input-container"><i class="fa fa-star fa fa-key rf-icon" style="font-size: 21px;"></i><input class="form-control rf-input-field" type="password" placeholder="Contraseña" name="clave_bombero" required></div>
                            <button class="btn btn-primary rf-btn" type="submit">Registrar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-expand-md navbar-light" style="background: #de0909;margin-right: -14px;">
                <div class="container-fluid">
                    <div><a class="navbar-brand" href="#" style="color: rgb(255,255,255);">&nbsp; <img src="assets/img/237c7418-9f63-484f-b745-2e812bc2bcc3-removebg-preview.png" style="width: 26px;margin-right: -7px;">&nbsp;Sistema de Asistencia</a>
                    <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
                    <div class="collapse navbar-collapse" id="navcol-2">
                        <ul class="navbar-nav ms-auto" id="desktop-toolbar">
                            <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#" style="color: rgb(255,255,255);">&nbsp;<i class="fa fa-cog"></i>&nbsp;Opciones</a>
                                <div class="dropdown-menu" style="margin-left: -38px;"><button class="dropdown-item" class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#registrar"><i class="fa fa-user fa-fw"></i> Registrarse</button>
                                    <button class="dropdown-item" type="button" data-bs-toggle="modal"  data-bs-target="#loginadmin"><i class="fa fa-laptop fa-fw"></i>Iniciar Sesión</button></div>
                            </li>
                          
                        </ul>
                    </div>
                    <div class="clock" id="reloj"></div> <!-- Aquí va el reloj -->
                </div>
            </nav>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div id="main" style="margin-right: -15px;background: #de0909;">
                <div class="text-center" id="info" style="height: 504px;margin-top: 30px;">
                    <img id="ventaspro-logo" src="assets/img/237c7418-9f63-484f-b745-2e812bc2bcc3.jpg" width="200" style="width: 93px;">
                    <h3 class="text-center">Marcador de Asistencia</h3>
                    <p class="text-center">Ingrese su código y clave</p>
                    <form class="text-start" id="form-login" action="{{ route('registrarasistencia') }}" method="POST">
                        @csrf
                        <div class="mb-3"><label class="form-label" id="lbl-usuario" for="txt-usuario">Código</label><input class="form-control" type="text" id="txt-usuario" name="cod_bombero"></div>
                        <div class="mb-3"><label class="form-label" id="lbl-password" for="txt-password">Clave</label><input class="form-control" type="password" id="txt-password" name="clave_bombero" ></div>
                    <div class="text-center"><button class="btn btn-primary" data-bss-hover-animate="pulse" id="btn-sesion" type="submit" style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #256db4;">Marcar Asistencia</button></div></form>
                </div>
            </div>
        </div>
        <div class="col-md-9" style="background: url(&quot;assets/img/92ecd90c-b345-427d-bf11-9c1607d5dfd0.jpg&quot;) center / auto no-repeat;">
            <div class="card" style="margin-top: 8px;margin-right: 12px;">
                <div class="card-header">
                    <h5 class="mb-0"><i class="fa fa-user" style="margin-right: 3px;"></i><span style="color: var(--bs-heading-color); background-color: var(--bs-card-cap-bg);">Registro de Asistencia</span></h5>
                </div>
                <div class="card-body">
                    @if (session('alert1'))
                    <div class="alert alert-success" role="alert">
                        <i class="fa fa-check-circle" style="font-size: 20px;"></i><span class="text-dark margin-left" style="margin: 0px;margin-left: 10px;" ><strong>{{ session('alert1') }}</strong></span><span class="text-info margin-left" style="margin: 0px;margin-left: 10px;"></span>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" style="position: relative; float: right;"></button>
                    </div>
                    @endif
                    <div class="form-group pull-right">
                        <input type="text" class="search form-control" placeholder="Buscar">
                    </div><br>
                    <span class="counter pull-right"></span><br>
                    <div class="table-responsive" style="max-height: 700px; overflow-y: auto;">
    <table class="table table-hover table-bordered results text-nowrap">
        <thead>
            <tr class="table-danger">
                <th>N°</th>
                <th>Nombre</th>
                <th class="text-center">Grado</th>
                <th class="text-center">Fecha</th>
                <th class="text-center">Hora</th>
                <th class="text-center">Tipo</th>
            </tr>
            <tr class="warning no-result">
                <td colspan="6"><i class="fa fa-warning"></i> No result</td>
            </tr>
        </thead>
        <tbody>
            @foreach($asistencias as $index => $a) <!-- Mostrar todos los registros -->
            <tr>
                <th scope="row">{{$index + 1}}</th>
                <td>{{$a->nombre_bombero}} {{$a->apellido_bombero}}</td>
                <td class="text-center">{{$a->grado_bombero}}</td>
                <td class="text-center">{{date('d-m-Y', strtotime($a->fecha_control))}}</td>
                <td class="text-center">{{$a->hora_control}}</td>
                <td class="text-center">{{$a->estado_control}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>                </div>
            </div>
        </div>
    </div>

    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/Responsive-Active-Navbar-script.js"></script>
    <script src="assets/js/Table-with-search-table.js"></script>

    <script>
        // Función para actualizar el reloj
        function actualizarReloj() {
            const reloj = document.getElementById('reloj');
            const now = new Date();
            const hours = now.getHours().toString().padStart(2, '0');
            const minutes = now.getMinutes().toString().padStart(2, '0');
            const seconds = now.getSeconds().toString().padStart(2, '0');
            reloj.textContent = `${hours}:${minutes}:${seconds}`;
        }

        // Actualizar el reloj cada segundo
        setInterval(actualizarReloj, 1000);

        // Llamar a la función una vez al cargar la página para que no espere un segundo
        actualizarReloj();
    </script>

</body>

</html>
