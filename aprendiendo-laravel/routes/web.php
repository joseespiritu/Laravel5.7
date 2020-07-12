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

use App\Http\Controllers\PeliculaController;

Route::get('/', function () {
    echo "<h1>Hola Mundo</h1>"; 
    return view('welcome');
});

Route::get('/peliculas/{pagina?}','PeliculaController@index');
Route::get('/detalle/{year?}',[
    'middleware' => 'testyear',
    'uses' => 'PeliculaController@detalle',
    'as' => 'detalle.pelicula'
]);

Route::get('/redirigir','PeliculaController@redirigir');

/* Rutas de tipo resource */
Route::resource('usuario','UsuarioController');

Route::get('/formulario','PeliculaController@formulario');
Route::post('/recibir','PeliculaController@recibir');

/* RUTAS DE FRUTA */
Route::group(['prefix'=>'frutas'], function(){
    Route::get('index', 'FrutaController@index');
    Route::get('detail/{id}', 'FrutaController@detail');
    Route::get('crear', 'FrutaController@create');
    Route::post('save', 'FrutaController@save');
    Route::get('delete/{id}', 'FrutaController@delete');
});

//GET: Conseguir datos
//POST: Guardar datos
//PUT: Actualizar recursos
//DELETE: Eliminar recursos

/* Route::get('/mostrarFecha',function(){
    $titulo = "Estoy mostrando la fecha";
    return view('mostrar-fecha', array(
        'titulo' => $titulo,
    ));
});

Route::get('/pelicula/{titulo}/{year?}',function($titulo = 'No hay una pelicula seleccionada', $year = 2019){
   return view('pelicula', array(
      'titulo' => $titulo,
       'year' => $year,
   ));
})->where(array(
    'titulo' => '[a-zA-Z]+',
    'year' => '[0-9]+',
));

Route::get('/listado-peliculas',function(){
    $titulo = "Listado de peliculas";
    $listado = array('batman', 'spiderman', 'Gran torino');
    $director = '';
    return view('peliculas.listado')
                ->with('titulo', $titulo)
                ->with('listado', $listado)
                ->with('director', $director);
});

Route::get('/pagina-generica',function(){
   return view('pagina');
}); */