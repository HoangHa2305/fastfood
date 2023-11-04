@extends('layouts.site')

@section('main')
<!-- Start All Pages -->
<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Thanh toán khi nhận hàng</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End All Pages -->
<form method="POST">
<div class="container pb-5 mt-n2 mt-md-n3">
    <div class="row">
        @php $total= 0; @endphp
        <div class="col-xl-9 col-md-8">
            <h2 class="h6 d-flex flex-wrap justify-content-between align-items-center px-4 py-3 bg-secondary"><a class="font-size-sm" href="{{url('carts')}}"><i class="fa fa-arrow-circle-left" style="font-size:24px;"></i> Quay lại giỏ hàng</a></h2>
            @foreach($products as $product)
            @php
                $price = $product->price_sale !=0 ? $product->price_sale : $product->price;
                $priceEnd = $price * $carts[$product->id];
                $total += $priceEnd;
            @endphp
            <div class="d-sm-flex justify-content-between my-4 pb-4 border-bottom">
                <div class="media d-block d-sm-flex text-center text-sm-left">
                    <a class="cart-item-thumb mx-auto mr-sm-4">
                        <img src="{{url('public/uploads')}}/{{$product->thumb}}" alt="Product">
                    </a>
                    <div class="media-body pt-3">
                        <h3 class="product-card-title font-weight-semibold border-0 pb-0">{{$product->name}}</h3>
                        <div class="font-size-lg text-primary pt-2">
                            <p style="color: #d65106;">{{$product->price_sale !=0 ? number_format($product->price_sale,0,'','.') : number_format($product->price,0,'','.')}}
                            VNĐ</p>
                        </div>
                    </div>
                </div>
                <div class="pt-2 pt-sm-0 pl-sm-3 mx-auto mx-sm-0 text-center text-sm-left d-flex align-items-center" style="max-width: 20rem;">
                    <div class="form-group mb-2 mr-2">
                        <label for="quantity1">Số lượng</label>
                        <p>{{ $carts[$product->id]}}</p>
                    </div>
                    <div class="form-group mb-2 ml-2">
                        <label for="quantity1"><b>Thành tiền</b></label>
                        <p>{{number_format($priceEnd,0,'','.')}} VNĐ</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        @if(Auth::check())
        <!-- Sidebar -->
        <div class="col-xl-3 col-md-4 pt-3 pt-md-0">
            <h2 class="h6 px-4 py-3 bg-secondary text-center">Tổng cộng</h2>
            <div class="h3 font-weight-semibold text-center py-3">{{number_format($total,0,'','.')}} VNĐ</div>
            <hr>
            <form method="post">
            <h3 class="h6 pt-4 font-weight-semibold">Thông tin khách hàng</h3>
            <p>Tên : <b>{{Auth::user()->name}}</b></p>
            <input type="hidden" name="name" value="{{Auth::user()->name}}">
            <input type="hidden" name="id_user" value="{{Auth::user()->id}}">
            <p>Email : <b>{{Auth::user()->email}}</b></p> 
            <input type="hidden" name="email" value="{{Auth::user()->email}}">
            <p>Số điện thoại : <b>0{{Auth::user()->phone}}</b></p>
            <input type="hidden" name="phone" value="{{Auth::user()->phone}}">
            <input type="hidden" name="total" value="{{$total}}">
            <input type="hidden" name="method" value="0">
            <p>Địa chỉ :  <input type="text" name="address" value="{{Auth::user()->address}}"></p>          
            <h3 class="h6 pt-4 font-weight-semibold"><span class="badge badge-success mr-2">Note</span>Ghi chú</h3>
            <textarea class="form-control mb-3" name="content" rows="5"></textarea>
            <button type="submit" formaction="/projectlaravel/carts" class="btn btn-primary btn-block" style="background-color: green;border-color: green;margin-bottom: 20px;">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card mr-2">
                    <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                    <line x1="1" y1="10" x2="23" y2="10"></line>
                </svg>Thanh toán</button>
            @csrf
            </form>
        </div>
        @endif
    </div>
</div>
<style>
    .form-group.mb-2.mr-2 {
        padding-right: 100px; 
    }
</style>
@endsection