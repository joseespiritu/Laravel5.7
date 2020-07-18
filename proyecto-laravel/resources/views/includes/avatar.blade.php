@if(Auth::user()->image)
    <div class="container-avatar">
        <img src="{{ route('user.avatar',['filename' => Auth::user()->image]) }}" alt="Imagen Usuario" class="avatar"/>
    </div>
@endif