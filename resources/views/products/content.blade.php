@extends('layouts.site')
@section('main')
<link type="text/css" rel="stylesheet" href="{{url('public')}}/rate/css/rate.css">
<script src="{{url('public/rate')}}/js/jquery-1.9.1.min.js"></script>
<!-- Start All Pages -->
<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Chi tiết sản phẩm</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End All Pages -->
<!-- Start Category title -->
<br>
<div class="container">
    <div class="bread-crumb">
        <a href="/projectlaravel/" style="color: #d65106;">
            Trang chủ 
            <i class="fa fa-angle-right" aria-hidden="true" style="color: black;"></i>
        </a>
        <a href="/projectlaravel/danh-muc/{{$product->menu->id}}-{{ \Str::slug($product->menu->name) }}.html" style="color: #d65106;">
            {{$product->menu->name}}
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
        <span>
            {{ $title }}
        </span>
    </div>
</div>
<!-- End Category title -->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="{{url('public/uploads')}}/{{$product->thumb}}" alt="..." /></div>
                <div class="col-md-6">
                    <h1 class="display-5 fw-bolder">{{$product->name}}</h1>
                    <br>
                    <p class="lead">{!! $product->content !!}</p>
                    <span style="font-size:20px;"><b>Giá :</b> {!! \App\Helpers\Helper::price($product->price,$product->price_sale) !!}</span>
                    <br>
                    <br>
                    <div class="d-flex">
                        <form action="/projectlaravel/add-cart" method="post">
                            <input class="form-control text-center me-3" name="num_product" id="num_product" type="num" value="1" style="max-width: 3rem" />
                            @if($product->price != NULL)
                            <button class="btn btn-outline flex-shrink-0" type="submit" style="background-color: #d65106;color:white;">
                            <i class="bi-cart-fill me-1"></i>
                            Mua hàng 
                            </button>
                            <input type="hidden" name="product_id" value="{{$product->id}}">
                            @endif
                            @csrf
                        </form>
                    </div>
                    <div class="rating">
                        <p>Đánh giá sản phẩm:</p>
                        <div class="rate">
                            <div class="vote">
                                @for($i=1;$i<=5;$i++)
                                <div class="star_1 ratings_stars @if($i<=$medium) ratings_over @endif"><input value="{{$i}}" type="hidden"></div>
                                @endfor
                                <span class="rate-np">{{$medium}}</span>
                            </div> 
                        </div>
                    </div>
                </div>
            <div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="heading-title text-center">
                <h2>Sản phẩm liên quan</h2>
            </div>
        </div>
        <div class="row inner-menu-box">
            @include('products.list')
        </div>
    </div>	
</div>
<script>
        if(screen.width <= 736){ document.getElementById("viewport").setAttribute("content", "width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"); }
    	$(document).ready(function(){

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

			//vote
			$('.ratings_stars').hover(
	            // Handles the mouseover
	            function() {
	                $(this).prevAll().addBack().addClass('ratings_hover');
	                // $(this).nextAll().removeClass('ratings_vote'); 
	            },
	            function() {
	                $(this).prevAll().addBack().removeClass('ratings_hover');
	                // set_votes($(this).parent());
	            }
	        );

			$('.ratings_stars').click(function(){
                var isCheck = "{{Auth::check()}}";
                var id_user = "{{Auth::id()}}";
                var id_product = "{{$product->id}}";
				var Values =  $(this).find("input").val();
		        // alert(Values);
                if(isCheck){
                    $.ajax({
                        type: 'post',
                        url: '{{URL("/product/rate")}}',
                        data: {
                            rate: Values,
                            id_user: id_user,
                            id_product: id_product
                        }
                    });
                }else{
                    alert("Bạn vui lòng đăng nhập");
                }

		    	if ($(this).hasClass('ratings_over')) {
		            $('.ratings_stars').removeClass('ratings_over');
		            $(this).prevAll().addBack().addClass('ratings_over');
		        } else {
		        	$(this).prevAll().addBack().addClass('ratings_over');
		        }
		    });
		});
</script>
<style>
    .rating {
        margin-top: 10px;
        font-weight: bold;
    }
</style>
@endsection