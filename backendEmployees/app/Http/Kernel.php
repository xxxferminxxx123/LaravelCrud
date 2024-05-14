<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    protected $middlewareGroups = [
        'web' => [
            // Otros middlewares
            // \App\Http\Middleware\VerifyCsrfToken::class,
        ],

        'api' => [
            // Middleware para API
        ],
    ];

    // Otro código de Kernel...
}
