<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;


class PagesController extends Controller
{
    public function index() {
        $title = 'Welcome to Laravel!';
        //return view('pages.index', compact('title'));
        //return 'INDEX';
        $featuredPost1 = Post::where('featured', 1)->get();
        $featuredPost2 = Post::where('featured', 2)->get();
        $featuredPost3 = Post::where('featured', 3)->take(1)->get();
        $featuredPost4 = Post::where('featured', 4)->take(1)->get();
        $featuredPost5 = Post::where('featured', 5)->take(1)->get();

        // return view('pages.index')->with('featuredPost2', $featuredPost2);

        return view('pages.index', compact('title', 'featuredPost1', 'featuredPost2', 'featuredPost3', 'featuredPost4', 'featuredPost5'));
        // return view('pages.index')->with('title', $title);
    }

    public function about() {
        $title = 'About Us';
        return view('pages.about')->with('title', $title);
    }

    public function services() {
        $data = array(
            'title' => 'Services',
            'services' => ['Web Design', 'Programming', 'SEO']
        );
        return view('pages.services')->with($data);
    }
}
