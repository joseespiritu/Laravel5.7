@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">

            @include('includes.message')

                <div class="card pub_image pub_image_detail">
                    <div class="card-header">

                        @if($image->user->image)
                        <div class="container-avatar">
                            <img src="{{ route('user.avatar',['filename' => $image->user->image]) }}" alt="Imagen Usuario" class="avatar"/>
                        </div>
                        @endif

                        <div class="data-user">
                            {{$image->user->name.' '.$image->user->surname}}
                            <span class="nickname">{{' | @'.$image->user->nick}}</span>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="image-container image-detail">
                            <img src="{{ route('image.file',['filename'=> $image->image_path])}}" alt="Image"/>
                        </div>
    
                        <div class="description">
                            <span class="nickname">{{ '@'.$image->user->nick }}</span>
                            <span class="nickname date"> {{' | '.\FormatTime::LongTimeFilter($image->created_at)}}  </span>            
                        <p>
                            {{ $image->description }}
                        </p>
                        </div>
                        <div class="likes">
                            <img src="{{ asset('img/heart-black.png')}}" alt="heart"/>
                        </div>
                        <div class="clearfix">
                            <div class="comments">
                                <h2>Comentarios ({{count($image->comments)}})</h2>
                                <hr>

                                <form action="{{ route('comment.save')}}" method="POST">
                                    @csrf
                                    <input type="hidden" name="image_id" value="{{$image->id}}"/>
                                    <p>
                                        <textarea class="form-control" name="content" required></textarea>
                                        @if($errors->has('content'))
                                            <span role="alert">
                                                <strong>{{ $errors->first('content') }}</strong>
                                            </span>
                                        @endif
                                    </p>
                                    <button type="submit" class="btn btn-success">
                                        Enviar
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

        </div>
    </div>
</div>
@endsection
