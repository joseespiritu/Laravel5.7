<h1>{{$titulo}}</h1>
<p>(accion index del controlador PeliculasController)</p>
@if(isset($pagina))
    <h3>La página es {{$pagina}}</h3>
@endif

<a href="{{ action('PeliculaController@detalle') }}">Ir al detalle</a>

<a href="{{ route('detalle.pelicula') }}">Ir al detalle</a>