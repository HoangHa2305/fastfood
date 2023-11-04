<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Service\Product\ProductService;
use App\Models\Rate;

class ProductController extends Controller
{
    protected $productService;

    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    public function index($id = '', $lug = '')
    {
        $product = $this->productService->show($id);
        $productsMore = $this->productService->more($id);
        $rates = $this->productService->rate($id);
        $sum = 0;
        $count = 0;
        $medium = 0;

        if($rates){
            foreach($rates as $rate){
                $sum += $rate->rate;
                $count++;
            }
            if($count>0){
                $medium = round($sum/$count,1);
            }
        }

        return view('products.content',[
            'title' => $product->name,
            'product' => $product,
            'medium' => $medium,
            'products' => $productsMore
        ]);
    }

    public function rate(Request $request)
    {
        $rate = new Rate();
        $rate->id_user = $request->id_user;
        $rate->id_product = $request->id_product;
        $rate->rate = $request->rate;
        $rate->save();
    }
}
