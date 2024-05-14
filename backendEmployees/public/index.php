<?php

// public/index.php

// Registro del cargador automático de Composer...
require __DIR__.'/../vendor/autoload.php';

// Iniciar Laravel y manejar la solicitud...
$app = require_once __DIR__.'/../bootstrap/app.php';

// Crear una instancia de la aplicación con nuestro middleware de CORS
$app = $app->make('Illuminate\Contracts\Http\Kernel')
    ->prependMiddleware(\App\Http\Middleware\CorsMiddleware::class);

// Manejar la solicitud capturada
$response = $app->handle(
    $request = Illuminate\Http\Request::capture()
);

// Enviar la respuesta a través del servidor HTTP
$response->send();

// Terminar la aplicación
$app->terminate($request, $response);
