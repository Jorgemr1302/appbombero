<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DB;

use DateTime;
use DateTimeZone;
use Carbon\Carbon;
use PDF;
date_default_timezone_set('America/Lima');



class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    


    public function index()
    {
        //
        $asistencias = DB::table('control')
    ->join('personal', 'control.personal_idpersonal', '=', 'personal.idpersonal')
    ->select('control.*', 'personal.*')
    ->orderBy('control.idcontrol', 'desc')  // Ordenar por idcontrol de manera descendente
    ->get();

        return view('welcome',compact('asistencias'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function ingresaradmin(Request $request)
    {
        // return $request->all();
        $email=$request->input('email');
        $password=$request->input('password');
        if($email=="admin@admin.com" && $password=="admin2025"){

            return view('reportes');

        }
        else {

            echo '<html> <h2>Usuario o Clave incorrecto</h2><br><a href="javascript:history.back()" >Volver</a>';

        }


        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function agregarbombero(Request $request)
    {
        //        return $request->all();
        DB::table('personal')
        ->insert([
            "cod_bombero" =>$request->input('cod_bombero'),
            "clave_bombero"=>$request->input('clave_bombero'),
            "nombre_bombero"=>$request->input('nombre_bombero'),
            "apellido_bombero"=>$request->input('apellido_bombero'),
            "grado_bombero"=>$request->input('grado_bombero'),
            "estado_bombero"=>'Activo',
                    
    
        ]);

        return redirect()->route('index')->with('alert1', 'Registro Guardado Satisfactoriamente!');
    }

    /**
     * Display the specified resource.
     */
    public function registrarasistencia(Request $request)
    {
        //        return $request->all();

            // Obtener los valores de cod_bombero y clave_bombero
    $cod_bombero = $request->input('cod_bombero');
    $clave_bombero = $request->input('clave_bombero');

    // Realizar la consulta para verificar si existe un registro
    $usuario = DB::table('personal')
                 ->where('cod_bombero', $cod_bombero)
                 ->where('clave_bombero', $clave_bombero)
                 ->first();

    // Verificar si el usuario existe
    if ($usuario) {
        // Usuario encontrado
    $ultimoRegistro = DB::table('control')
                            ->where('personal_idpersonal', $usuario->idpersonal)
                            ->latest('idcontrol') // Obtén el último registro por fecha
                            
                            ->first();

              
            // return $ultimoRegistro;             
        // Verificar si existe un último registro
        if ($ultimoRegistro) {
            // Comprobar si el último estado fue 'ENTRADA'
            if ($ultimoRegistro->estado_control == 'ENTRADA') {
                // Si el último estado fue 'ENTRADA', registrar como 'SALIDA'
                DB::table('control')->insert([
                    'fecha_control' => Carbon::now()->toDateString(), // Fecha actual
                    'hora_control' => Carbon::now()->toTimeString(), // Hora actual
                    'estado_control' => 'SALIDA',
                    'personal_idpersonal' => $usuario->idpersonal
                ]);
                return redirect()->route('index')->with('alert1', 'SALIDA Registrada Satisfactoriamente!');
            } else {
                // Si el último estado fue 'SALIDA', registrar como 'ENTRADA'
                DB::table('control')->insert([
                    'fecha_control' => Carbon::now()->toDateString(), // Fecha actual
                    'hora_control' => Carbon::now()->toTimeString(), // Hora actual
                    'estado_control' => 'ENTRADA',
                    'personal_idpersonal' => $usuario->idpersonal
                ]);
                return redirect()->route('index')->with('alert1', 'ENTRADA Registrada Satisfactoriamente!');
            }
        } else {
            // Si no existe ningún registro en la tabla control, se asume que el primer registro es 'ENTRADA'
            DB::table('control')->insert([
                'fecha_control' => Carbon::now()->toDateString(), // Fecha actual
                'hora_control' => Carbon::now()->toTimeString(), // Hora actual
                'estado_control' => 'ENTRADA',
                'personal_idpersonal' => $usuario->idpersonal
            ]);
            return redirect()->route('index')->with('alert1', 'ENTRADA Registrada Satisfactoriamente!');
        }
    } else {
        // Usuario no encontrado
        return redirect()->route('index')->with('alert1', 'Usuario no encontrado');
    } 
    }

    /**
     * Show the form for editing the specified resource.
     */
    
    public function obtenerHorasTrabajo()
{
    // Consulta SQL para obtener las horas trabajadas de todos los empleados
    $resultados = DB::select(
        'SELECT 
            p.nombre, 
            c1.fecha_control AS fecha_entrada, 
            c1.hora_control AS hora_entrada,
            c2.fecha_control AS fecha_salida, 
            c2.hora_control AS hora_salida, 
            TIMESTAMPDIFF(HOUR, 
                CONCAT(c1.fecha_control, " ", c1.hora_control), 
                CONCAT(c2.fecha_control, " ", c2.hora_control)
            ) AS horas_trabajadas
        FROM 
            control c1
        JOIN 
            control c2 ON c1.personal_idpersonal = c2.personal_idpersonal 
            AND c1.estado_control = "ENTRADA" 
            AND c2.estado_control = "SALIDA" 
            AND c2.idcontrol > c1.idcontrol 
        JOIN 
            personal p ON c1.personal_idpersonal = p.idpersonal
        ORDER BY 
            p.nombre, c1.fecha_control, c1.hora_control'
    );

    return response()->json($resultados);
}

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }


    public function generarpdf(Request $request)
    {
        
     $fechaInicio = Carbon::parse($request->fecha_inicio);
    $fechaFin = Carbon::parse($request->fecha_fin);

    $fecha1 = $fechaInicio->format('d-m-Y');
    $fecha2 = $fechaFin->format('d-m-Y');

    $registros = DB::table('control')
        ->join('personal', 'control.personal_idpersonal', '=', 'personal.idpersonal')
        ->whereBetween('control.fecha_control', [$fechaInicio->toDateString(), $fechaFin->toDateString()])
        ->orderBy('control.personal_idpersonal')
        ->orderBy('control.fecha_control')
        ->orderBy('control.hora_control')
        ->select(
            'control.idcontrol',
            'control.fecha_control',
            'control.hora_control',
            'control.estado_control',
            'control.personal_idpersonal',
            'personal.nombre_bombero',
            'personal.apellido_bombero',
            'personal.grado_bombero',
            'personal.cod_bombero'
        )
        ->get();

    $resultados = [];
    $registroActual = null;
    $entrada = null;
    $salida = null;
    $horasTrabajadas = 0;
    $minutosTrabajados = 0;
    $detalleHoras = [];
    $personal = null;

    foreach ($registros as $registro) {
        if ($registroActual !== $registro->personal_idpersonal) {
            if ($registroActual !== null) {
                // Calcular total horas y minutos correctamente
                $totalMinutos = ($horasTrabajadas * 60) + $minutosTrabajados;
                $totalHoras = intdiv($totalMinutos, 60);
                $minutosRestantes = $totalMinutos % 60;

                $resultados[] = [
                    'personal' => $personal,
                    'total_horas' => sprintf("%d horas %d minutos", $totalHoras, $minutosRestantes),
                    'detalle_horas' => $detalleHoras,
                ];
            }

            $registroActual = $registro->personal_idpersonal;
            $personal = $registro;
            $horasTrabajadas = 0;
            $minutosTrabajados = 0;
            $detalleHoras = [];
        }

        $fechaHora = Carbon::parse($registro->fecha_control . ' ' . $registro->hora_control);

        if ($registro->estado_control == 'ENTRADA') {
            $entrada = $fechaHora;
        }

        if ($registro->estado_control == 'SALIDA' && $entrada) {
            $salida = $fechaHora;

            if ($salida > $entrada) {
                $diferencia = $entrada->diff($salida);
                $horasTrabajadas += $diferencia->h;
                $minutosTrabajados += $diferencia->i;

                $detalleHoras[] = [
                    'fecha' => $entrada->format('d/m/Y'),
                    'entrada' => $entrada->format('H:i'),
                    'salida' => $salida->format('H:i'),
                    'horas_trabajadas' => sprintf("%d horas %d minutos", $diferencia->h, $diferencia->i),
                ];
            }

            $entrada = null;
        }
    }

    if ($registroActual !== null) {
        $totalMinutos = ($horasTrabajadas * 60) + $minutosTrabajados;
        $totalHoras = intdiv($totalMinutos, 60);
        $minutosRestantes = $totalMinutos % 60;

        $resultados[] = [
            'personal' => $personal,
            'total_horas' => sprintf("%d horas %d minutos", $totalHoras, $minutosRestantes),
            'detalle_horas' => $detalleHoras,
        ];
    }

    $pdf = PDF::loadView('reportes.reporteshoras', compact('resultados','fecha1','fecha2'));

    return $pdf->stream('reporte_horas_trabajadores.pdf');


        
    }
}
