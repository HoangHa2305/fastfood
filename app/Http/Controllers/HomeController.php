<?php

namespace App\Http\Controllers;

use App\Http\Service\CommentService;
use Illuminate\Http\Request;
use App\Http\Service\Menu\MenuService;
use App\Http\Service\Slider\SliderService;
use App\Http\Service\Product\ProductService;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Http\Service\User\UserService;
use App\Mail\ContactMail;

class HomeController extends Controller
{
    protected $slider;
    protected $menu;
    protected $product;
    protected $user;
    protected $comment;


    public function __construct(SliderService $slider,MenuService $menu, ProductService $product,UserService $user,CommentService $comment )
    {
        $this->slider = $slider;
        $this->menu = $menu;
        $this->product = $product;
        $this->user = $user;
        $this->comment = $comment;
    }

    public function index()
    {
        return view('home',[
            'title'=> 'Cửa hàng thức ăn nhanh',
            'menus' => $this->menu->show(),
            'sliders' => $this->slider->show(),
            'products' => $this->product->get(),
            'commentones' => $this->comment->getOne(),
            'comments' => $this->comment->get()
        ]);
    }

    public function show()
    {
        $result = User::where('role',1)
        ->get();

        return view('user.member',[
            'title' => 'Thành viên',
            'members' => $result
        ]);
    }

    public function edit()
    {
        return view('user.info');
    }

    // public function update(Request $request, User $user)
    // {
    //     $result = $this->user->update($request,$user);
    //     if($result){
    //         return redirect()->back();
    //     }else{
    //         return '123';
    //     }
    // }

    public function contact()
    {
        return view('user.contact',[
            'title' => 'Liên hệ',
        ]);
    }

    public function postcontact(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $content = $request->content;

        Mail::to('hoangha2352@gmail.com')->send(new ContactMail($name,$email,$content));

        return redirect()->back();
    }


}
