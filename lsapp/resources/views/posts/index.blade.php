@extends('layouts.app')

@section('content')
    <h1 class="text-white">Posts</h1>
    @if (count($posts) > 0)
        @foreach ($posts as $post)
            <div class="card article-list mb-3">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width: 100%" src="/lsapp/public/storage/cover_images/{{$post->cover_image}}" alt="Cover Image">
                    </div>
                    <div class="col-md-8 col-sm-8">
                        <h3 class="card-title mt-2"><a href="/lsapp/public/posts/{{$post->id}}">{{$post->title}}</a></h3>
                        <small class="card-footer text-muted">Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    </div>
                </div>
            </div>
        @endforeach
        {{$posts->links()}}
    @else
        <p>No posts found</p>
    @endif
@endsection