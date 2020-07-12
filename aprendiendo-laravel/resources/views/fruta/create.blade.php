@if(isset($fruta) && is_object($fruta))
    <h1>Editar fruta</h1>
@else
    <h1>Crear una fruta</h1>
@endif

<form action="{{ isset($fruta) ? action('FrutaController@update') : action('FrutaController@save') }}" method="POST">
    {{csrf_field()}}
    @if(isset($fruta) && is_object($fruta))
        <input type="hidden" name="id" value="<?=isset($fruta->id) ? $fruta->id : ''?>"/>
    @endif
    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre" value="<?=isset($fruta->nombre) ? $fruta->nombre : ''?>"/>
    <br/>

    <label for="descripcion">Descripcion:</label>
    <input type="text" name="descripcion" value="<?=isset($fruta->descripcion) ? $fruta->descripcion : ''?>"/>
    <br/>

    <label for="precio">Precio</label>
    <input type="number" name="precio" value="<?=isset($fruta->precio) ? $fruta->precio : 0?>"/>
    <br/>

    <input type="submit" value="Guardar"/>
</form>