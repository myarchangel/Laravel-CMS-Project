@extends('layouts.app')


@section('content')

    {{-- Carousal Section --}}
    <div id="myCarousel" class="carousel slide mt-0 py-0" data-bs-ride="carousel">
        <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
        <div class="carousel-item active">
            <img style="width: 100%" src="/lsapp/public/images/ca1.jpg" alt="">

            <div class="container">
            <div class="carousel-caption text-start text-dark">
                <h1> <span class="text-danger">Kamal Prototype Blog</span> </h1>
                <p><a class="btn btn-lg btn-primary" href="#">Register Now</a></p>
            </div>
            </div>
        </div>
        <div class="carousel-item">
            <img style="width: 100%" src="/lsapp/public/images/ca2.jpg" alt="">

            <div class="container">
            <div class="carousel-caption text-start text-dark">
                <h1> <span class="badge bg-warning text-dark">A Cutting-Edge Blog</span> </h1>
            </div>
            </div>
        </div>
        <div class="carousel-item">
            <img style="width: 100%" src="/lsapp/public/images/ca3.jpg" alt="">

            <div class="container">
            <div class="carousel-caption text-start text-dark">
                <h3 class="text-warning">Features</h3>
                <p><span class="badge bg-warning text-dark">SEO Ready</span>&nbsp;<span class="badge bg-warning text-dark">Mobile Friendly</span>&nbsp;<span class="badge bg-warning text-dark">Free Registration</span></p>
            </div>
            </div>
        </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
        </button>
    </div>

    
    {{-- Blog Features Section --}}
    <div class="card featured-posts mt-3" id="testWay">
        <h1 style="font-weight: 100" class="text-center text-lemon">Popular Posts</h1>
        <div class="row">
            @if (count($featuredPost1) > 0)
                @foreach ($featuredPost1 as $featuredPost)
                    <div class="col-lg-6 col-md-12">
                        <img class="rounded-3" style="width: 100%" src="/lsapp/public/storage/cover_images/{{$featuredPost->cover_image}}" alt="">
                        <h4 class="mt-1 px-2 text-lemon">{{$featuredPost->title}}</h4>
                    </div>
                @endforeach
            @else
                <div class="col-lg-6 col-md-12">
                    <img class="rounded-3" style="width: 100%" src="/lsapp/public/images/ca1.jpg" alt="">
                    <h4 class="mt-1 px-2 text-lemon">Big Feature Here</h4>
                </div>       
            @endif

            <div class="col-lg-6 col-md-12">
                <div class="row">
                    @if (count($featuredPost2) > 0)
                        @foreach ($featuredPost2 as $featuredPost)
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <img class="rounded-2" style="width: 100%" src="/lsapp/public/storage/cover_images/{{$featuredPost->cover_image}}" alt="">
                                <h6 class="mt-1 px-2 text-lemon">{{$featuredPost->title}}</h6>
                            </div>
                        @endforeach
                    @else
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img class="rounded-2" style="width: 100%" src="/lsapp/public/images/ca1.jpg" alt="">
                        <h6 class="mt-1 px-2 text-lemon">Small Feature2</h6>
                    </div>                        
                    @endif

                    @if (count($featuredPost3) > 0)
                        @foreach ($featuredPost3 as $featuredPost)
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <img class="rounded-2" style="width: 100%" src="/lsapp/public/storage/cover_images/{{$featuredPost->cover_image}}" alt="">
                                <h6 class="mt-1 px-2 text-lemon">{{$featuredPost->title}}</h6>
                            </div>
                        @endforeach
                    @else
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img class="rounded-2" style="width: 100%" src="/lsapp/public/images/ca3.jpg" alt="">
                        <h6 class="mt-1 px-2 text-lemon">Small Feature3</h6>
                    </div>                        
                    @endif

                    @if (count($featuredPost4) > 0)
                        @foreach ($featuredPost4 as $featuredPost)
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <img class="rounded-2" style="width: 100%" src="/lsapp/public/storage/cover_images/{{$featuredPost->cover_image}}" alt="">
                                <h6 class="mt-1 px-2 text-lemon">{{$featuredPost->title}}</h6>
                            </div>
                        @endforeach
                    @else
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img class="rounded-2" style="width: 100%" src="/lsapp/public/images/ca1.jpg" alt="">
                        <h6 class="mt-1 px-2 text-lemon">Small Feature4</h6>
                    </div>                        
                    @endif
                    
                    @if (count($featuredPost5) > 0)
                        @foreach ($featuredPost5 as $featuredPost)
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <img class="rounded-2" style="width: 100%" src="/lsapp/public/storage/cover_images/{{$featuredPost->cover_image}}" alt="">
                                <h6 class="mt-1 px-2 text-lemon">{{$featuredPost->title}}</h6>
                            </div>
                        @endforeach
                    @else
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img class="rounded-2" style="width: 100%" src="/lsapp/public/images/ca2.jpg" alt="">
                        <h6 class="mt-1 px-2 text-lemon">Small Feature5</h6>
                    </div>                        
                    @endif

                </div>
            </div>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette justify-contents-center align-items-center">
      <div class="col-md-7 col-sm-12">
        <h2 class="featurette-heading">This is a prototype for a blog. <span class="text-lemon">It’ll blow your mind.</span></h2>
        <h4 class="text-white"><i>It was developed using the Laravel framework</i></h4>
      </div>
      <div class="col-md-5 col-sm-12" style="overflow: hidden">
        <img src="/lsapp/public/images/ca1.jpg" style="height: 500px" alt="">

      </div>
    </div>

    {{-- <div class="card mt-3 text-center">
        <h1>Welcome to Laravel!</h1>
        <p>This is the laravel application from the "Laravel from Scratch" video series</p>
        <p><a href="/login" class="btn btn-primary btn-lg text-white" role="button">Login</a> <a href="/register" class="btn btn-success btn-lg text-white" role="button">Register</a></p>
    </div> --}}
@endsection

