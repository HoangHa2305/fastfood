<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\ContentMail;
use App\Mail\MailNotify;
use App\Models\Customer;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class UserApiController extends Controller
{
    public function UserProfile($id)
    {
        $users = User::where('id',$id)->get();

        return response()->json($users);
    }

    public function login(Request $request)
    {
        $login = $request->only('email','password');

        if(Auth::attempt($login)){
            return response()->json([
                'status' => 'success',
                'auth' => Auth::user()
            ]);
        }else{
            return response()->json([
                'errors' => ['errors' => 'Email hoặc mật khẩu không đúng'],
            ],401);
        }
    }

    public function getOrder($id)
    {
        $orders = Customer::where('id_user',$id)->orderBy('id','desc')->get();

        return response()->json(['orders'=>$orders]);
    }

    public function getDetailOrder($id)
    {
        $customer = DB::table('customers')
            ->select('customers.name', 'customers.phone', 'customers.address', 'customers.email', 'customers.content', 'customers.total', 'customers.method')
            ->where('customers.id', '=', $id)
            ->first();

        $cart = DB::table('carts')
            ->select('carts.customer_id', 'carts.product_id', 'carts.qty', 'carts.price', 'products.name', 'products.thumb')
            ->join('products', 'carts.product_id', '=', 'products.id')
            ->where('carts.customer_id', '=', $id)
            ->get();
        return response()->json(['customers'=>$customer,'products'=>$cart]);
    }

    public function postContact(Request $request)
    {
        $data = $request->json()->all();

        $name = $data['name'];
        $email = $data['email'];
        $content = $data['content'];

        Mail::to('hoangha2352@gmail.com')->send(new ContentMail($name,$email,$content));

        return response()->json('Gửi liên hệ thành công');
    }
}
