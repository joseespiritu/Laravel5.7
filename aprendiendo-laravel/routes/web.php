<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    echo "<h1>Hola Mundo</h1>"; 
    return view('welcome');
});

//GET: Conseguir datos
//POST: Guardar datos
//PUT: Actualizar recursos
//DELETE: Eliminar recursos

Route::get('/mostrarFecha',function(){
    $titulo = "Estoy mostrando la fecha";
    return view('mostrar-fecha', array(
        'titulo' => $titulo,
    ));
});
