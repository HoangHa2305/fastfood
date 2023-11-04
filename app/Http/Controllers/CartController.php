<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Service\CartService;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    protected $cartServive;

    public function __construct(CartService $cartService)
    {
        $this->cartServive = $cartService;
    }

    public function index (Request $request)
    {
        $result = $this->cartServive->create($request);

       if($result == false){
        return redirect()->back();
       }

       return redirect('/carts');
    }

    public function show()
    {
        $products = $this->cartServive->getProduct();
        return view('carts.list',[
            'title' => 'Giỏ Hàng',
            'products' =>$products,
            'carts' => Session::get('carts')
        ]);
    }

    public function update(Request $request)
    {
        $this->cartServive->update($request);
        
        return redirect('/carts');
    }

    public function remove($id = 0)
    {
        $this->cartServive->remove($id);

        return redirect('/carts');
    }
    public function removeall()
    {
        $this->cartServive->removeall();
        return redirect()->back();
    }

    public function addCart(Request $request)
    {
        $result = $this->cartServive->addCart($request);

        if($result){
            return view('carts.success',[
            'title' => 'Thanh toán'
            ]);
        }else{
            return redirect()->back();
        }
    }

    public function getMethod()
    {
        return view('payment.method',[
            'title' => 'Thanh toán',
        ]);
    }

    public function execPostRequest($url, $data)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data))
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);
        return $result;
    }

    public function paymentMOMO(Request $request)
    {
        $result = $this->cartServive->addCart($request);

        $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";


        $partnerCode = 'MOMOBKUN20180529';
        $accessKey = 'klm05TvNBzhg7h7j';
        $secretKey = 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa';
        $orderInfo = "Thanh toán qua ATM MoMo";
        $amount = $request->total;
        $orderId = time() ."";
        $redirectUrl = "http://localhost:8080/projectlaravel/success";
        $ipnUrl = "http://localhost:8080/projectlaravel/success";
        $extraData = "";

        $requestId = time() . "";
        $requestType = "payWithATM";
        //before sign HMAC SHA256 signature
        $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
        $signature = hash_hmac("sha256", $rawHash, $secretKey);
        $data = array('partnerCode' => $partnerCode,
            'partnerName' => "Test",
            "storeId" => "MomoTestStore",
            'requestId' => $requestId,
            'amount' => $amount,
            'orderId' => $orderId,
            'orderInfo' => $orderInfo,
            'redirectUrl' => $redirectUrl,
            'ipnUrl' => $ipnUrl,
            'lang' => 'vi',
            'extraData' => $extraData,
            'requestType' => $requestType,
            'signature' => $signature);
        $result = $this->execPostRequest($endpoint, json_encode($data));
        $jsonResult = json_decode($result, true);  // decode json

        //Just a example, please check more in there
        return redirect()->to($jsonResult['payUrl']);
    }

    public function paymentSuccess()
    {
        return view('carts.success',[
            'title' => 'Thanh toán'
        ]);
    }

    public function offlinePayment()
    {
        $products = $this->cartServive->getProduct();
        return view('payment.offlinepayment',[
            'title' => 'Thanh toán khi nhận hàng',
            'products' =>$products,
            'carts' => Session::get('carts')
        ]);
    }

    public function onlinePayment()
    {
        $products = $this->cartServive->getProduct();
        return view('payment.onlinepayment',[
            'title' => 'Thanh toán khi nhận hàng',
            'products' =>$products,
            'carts' => Session::get('carts')
        ]);
    }
}