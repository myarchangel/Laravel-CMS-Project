@extends('layouts.app')

@section('content')
    <h1 class="text-white">Create Post</h1>
    {!! Form::open(['route' => 'posts.store', 'method' => 'POST', 'files' => true, 'enctype' => 'multipart/form-data']) !!}
    <div class="form-control">
        {{Form::label('title', 'Title')}}
        {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Enter Title Here'])}}
    </div>
    <div class="form-control mt-3">
        {{Form::label('body', 'Body')}}
        {{Form::textarea('body', '', ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Body Text'])}}
    </div>
    <div style="width: 50%" class="form-control mt-3">
        {{Form::label('coverImage', 'Cover Image: ')}}
        {{Form::file('cover_image')}}
    </div>
    <div style="width: 50%" class="form-select mt-3">
        {{Form::label('featured', 'Featured Post Position: ')}}
        {{Form::selectRange('featuredPosition', 0, 5)}}
    </div>
    {{Form::submit('Submit', ['class' => 'btn btn-primary mt-3'])}}
    {!! Form::close() !!}
@endsection