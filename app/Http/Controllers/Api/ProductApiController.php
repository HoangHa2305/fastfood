<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\MailNotify;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Rate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ProductApiController extends Controller
{
    public function getProduct()
    {
        $product = Product::all();

        return response()->json(['product'=>$product]);
    }

    public function detailProduct($id)
    {
        $product = Product::where('id',$id)->get();
        
        return response()->json(['product'=>$product]);
    }

    public function productCart(Request $request)
    {
        $data = $request->json()->all();

        $getProduct = [];
        foreach($data as $key => $value){
            $get = Product::findOrFail($key)->toArray();
            $get['qty'] = $value;
            $getProduct[] = $get;
        }
        return response()->json([
            'response' => 'success',
            'data' => $getProduct
        ]);
    }

    public function getNewProduct()
    {
        $product = Product::orderBy('id','desc')->take(5)->get();

        return response()->json(['product'=>$product]);
    }

    public function getProductCategory($id)
    {
        $product = Product::where('menu_id',$id)->orderBy('id','desc')->get();

        return response()->json(['product'=>$product]);
    }

    public function orderCart(Request $request)
    {
        $data = $request->json()->all();

        $products = $data['cart'];
        $carts = $data['product'];
        $users = $data['userInfo'];

        $customer = Customer::create([
            'name' => $users['name'],
            'phone' => $users['phone'],
            'address' => $users['address'],
            'method' => $users['method'],
            'email' => $users['email'],
            'content' => $users['content'],
            'total' => $users['total'],
            'id_user' => $users['id_user']
        ]);

        foreach($products as $product){
            $cart = new Cart();
            $cart->customer_id = $customer->id;
            $cart->product_id = $product['id'];
            $cart->qty = $product['qty'];
            $cart->price = $product['price_sale'] != 0 ? $product['price_sale'] : $product['price'];
            $cart->save();
        }

        $productId = array_keys($carts);
            $items = Product::select('id','name','price')
            ->where('active',1)
            ->whereIn('id',$productId)
            ->get();

            $cart = [];
            foreach($items as $item) {
                $qty = $carts[$item->id];
                $cart[] = [
                    'name' => $item->name,
                    'price' => $item->price,
                    'qty' => $qty
                ];
            }
            $data = [
                'subject' => 'Đặt hàng thành công',
                'cart' => $cart,
                'total' => $users['total']
            ];
            #SendMail
            try{
                Mail::to($users['email'])->send(new MailNotify($data));
                return response()->json(['Vui lòng kiểm tra mail đặt hàng']);
            }catch(\Exception $th){
                return $th->getMessage();
            }
    }

    public function rate(Request $request)
    {
        $rate = new Rate();
        $rate->id_user = $request->id_user;
        $rate->id_product = $request->id_product;
        $rate->rate = $request->rate;
        $rate->save();
    }

    public function getRate($id)
    {
        $sum = 0;
        $count = 0;
        $medium = 0;

        $rates = Rate::where('id_product',$id)->get();

        if($rates){
            foreach($rates as $rate){
                $sum += $rate['rate'];
                $count++;
            }
            if($count>0){
                $medium = round($sum/$count,1);
            }
        }

        return $medium;
    }

}
