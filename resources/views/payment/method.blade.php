@extends('layouts.site')

@section('main')
<!-- Start All Pages -->
<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Thanh toán</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End All Pages -->
<div class="container pb-5 mt-n2 mt-md-n3">
    <div class="row">
        <table class="table">
            <thead>
                <tr>
                    <th colspan="2" style="text-align: center;">Chọn phương thức thanh toán</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <a href="{{ url('/payment/online') }}">
                            <button class="btn btn-primary btn-block" style="background-color: #008080;border-color: #008080;margin-bottom: 20px;">    
                                Thanh toán trực tuyến
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{ url('/payment/offline') }}">
                            <button class="btn btn-primary btn-block" style="background-color: #CDCD00;border-color: #CDCD00;margin-bottom: 20px;">    
                                Thanh toán khi nhận hàng
                            </button>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection