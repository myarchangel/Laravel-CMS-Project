@extends('layouts.app')

@section('content')
    <a href="/lsapp/public/posts" class="btn btn-light mt-3">Go Back</a>
    <div class="card mt-3">
        <h1 class="card-title text-center">{{$post->title}}</h1>
        <div class="post-image">
            <img style="width: 100%" src="/lsapp/public/storage/cover_images/{{$post->cover_image}}" alt="Cover Image">
        </div>
        <div class="card-body">{!!$post->body!!}</div>
        <small class="card-footer text-muted">Written on {{$post->created_at}} by {{$post->user->name}}</small>
    </div>
    <hr>
        @if (!Auth::guest())
            @if (Auth::user()->id == $post->user_id)
                <div class="row flex-nowrap justify-content-between align-items-center">
                    <div class="col-6">
                        <a href="/lsapp/public/posts/{{$post->id}}/edit" class="btn btn-secondary">Edit</a>
                    </div>

                    <div class="col-6 d-flex justify-content-end align-items-center">
                        {!! Form::open(['route' => ['posts.destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right']) !!}
                            {{Form::hidden('_method', 'DELETE')}}
                            {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                        {!! Form::close() !!}
                    </div>
                </div>
            @endif
        @endif
@endsection