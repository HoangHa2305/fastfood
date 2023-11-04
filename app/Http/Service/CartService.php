<?php

namespace App\Http\Service;

use App\Jobs\SendMail;
use App\Mail\MailNotify;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

class CartService
{
    public function create($request)
    {
        $qty = (int)$request->input('num_product');
        $product_id = (int)$request->input('product_id');

        if($qty <= 0 || $product_id <=0){
            Session::flash('error','Số lượng hoặc sản phẩm không chính xác');
            return false;
        }

        $carts = Session::get('carts');
       if(is_null($carts)){
            Session::put('carts',[
                $product_id=> $qty
            ]);

           return true;
       }

        $exists = Arr::exists($carts,$product_id);
        if($exists){
            $carts[$product_id] = $carts[$product_id] + $qty;
            
            Session::put('carts', $carts[$product_id]);

            return true;
        }
        $carts[$product_id] = $qty;
        Session::put('carts',$carts);
        return true;

    }

    public function getProduct()
    {
        $carts = Session::get('carts');
        if(is_null($carts)) return [];

        $productId = array_keys($carts);
        return Product::select('id','name','price','price_sale','thumb')
        ->where('active',1)
        ->whereIn('id',$productId)
        ->get();
    }

    public function update($request)
    {
        Session::put('carts',$request->input('num_product'));
        
        return true;
    }

    public function remove($id)
    {
        $carts = Session::get('carts');

        unset($carts[$id]);
        Session::put('carts',$carts);

        return true;
    }
    public function removeall()
    {
        $carts = Session::get('carts');
        Session::forget('carts');

        return true;
    }

    public function addCart($request)
    {
        try{
            DB::beginTransaction();
            $carts = Session::get('carts');
            if(is_null($carts)) return false;

            $customer = Customer::create([
                'name' => $request->input('name'),
                'phone' => $request->input('phone'),
                'address' => $request->input('address'),
                'method' => $request->input('method'),
                'email' => $request->input('email'),
                'content' => $request->input('content'),
                'total' => $request->input('total'),
                'id_user' => $request->input('id_user')
            ]);

            $this->infoProductCart($carts,$customer->id);

            DB::commit();
            Session::flash('success','Đặt hàng thành công');

            $productId = array_keys($carts);
            $products = Product::select('id','name','price')
            ->where('active',1)
            ->whereIn('id',$productId)
            ->get();

            $cart = [];
            foreach($products as $product) {
                $qty = $carts[$product->id];
                $cart[] = [
                    'name' => $product->name,
                    'price' => $product->price,
                    'qty' => $qty
                ];
            }
            $data = [
                'subject' => 'Đặt hàng thành công',
                'cart' => $cart,
                'total' => $request->input('total')
            ];
            #SendMail
            try{
                Mail::to($request->input('email'))->send(new MailNotify($data));
                return response()->json(['Vui lòng kiểm tra mail đặt hàng']);
            }catch(\Exception $th){
                return $th->getMessage();
            }

            Session::forget('carts');
        } catch(\Exception $err){
            DB::rollBack();
            Session::flash('error','Đặt hàng lỗi, Vui lòng thử lại sau');
            return false;
        }

        return true;
    }

    protected function infoProductCart($carts,$customer_id)
    {
        $productId = array_keys($carts);
            $products = Product::select('id','name','price','price_sale','thumb')
            ->where('active',1)
            ->whereIn('id',$productId)
            ->get();

        foreach($products as $product){
            $cart = new Cart();
            $cart->customer_id = $customer_id;
            $cart->product_id = $product->id;
            $cart->qty = $carts[$product->id];
            $cart->price = $product->price_sale != 0 ? $product->price_sale : $product->price;
            $cart->save();
        }

        return true;
    }

    public function getCustomer()
    {
        return Customer::orderByDesc('id')->paginate(15);
    }

    public function getProductForCart($customer)
    {
        return $customer->carts()            //lấy qa mối liên kết releationship;
        ->with(['product'=> function($query){
            $query->select('id','name','thumb');
        }])->get() ;     
    }
}