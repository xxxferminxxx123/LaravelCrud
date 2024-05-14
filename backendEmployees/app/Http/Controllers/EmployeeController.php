<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Employee;
use App\Http\Middleware\CorsMiddleware; // Importa el middleware CorsMiddleware

class EmployeeController extends Controller
{

    public function index(Request $request)
    {


        // Obtener los valores validados de los parámetros
        $p_offset = $request->input('p_offset');
        $p_limit = $request->input('p_limit');
        $p_primer_nombre = $request->input('p_primer_nombre');
        $p_otros_nombres = $request->input('p_otros_nombres');
        $p_primer_apellido = $request->input('p_primer_apellido');
        $p_segundo_apellido = $request->input('p_segundo_apellido');
        $p_tipo_identificacion = $request->input('p_tipo_identificacion');
        $p_numero_identificacion = $request->input('p_numero_identificacion');
        $p_pais_empleo = $request->input('p_pais_empleo');
        $p_correo_electronico = $request->input('p_correo_electronico');
        $p_estado = $request->input('p_estado');
    
        $employees = DB::select('CALL consultar_empleados(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [
            $p_offset,
            $p_limit,
            $p_primer_nombre,
            $p_otros_nombres,
            $p_primer_apellido,
            $p_segundo_apellido,
            $p_tipo_identificacion,
            $p_numero_identificacion,
            $p_pais_empleo,
            $p_correo_electronico,
            $p_estado
        ]);
    
        return response()->json($employees);
    }
    
   


    public function desactivarEmployee(Request $request, $id)
    {
        $empID = $request->input('empID');

        DB::select('CALL deactivateEmployee(?)', [$id]);

        return response()->json(['message' => 'Employee deactivated successfully']);
    }


    
    
}
