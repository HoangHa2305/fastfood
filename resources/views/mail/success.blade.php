<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            border-collapse: collapse;
            text-align: center;
        }
        table, td, th {
            border: 1px solid;
        }
        th{
            background-color: #d65106;
            color: white;
        }
    </style>
</head>
<body>
    <h3>Cảm ơn bạn đã đặt hàng tại Fast Food</h3>
    <p>Thông tin đặt hàng:</p>
    <table>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá tiền</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
        </tr>
        @foreach($data['cart'] as $value)
        @php $total = $value['price'] * $value['qty']; @endphp
        <tr>
            <td>{{$value['name']}}</td>
            <td>{{$value['price']}}</td>
            <td>{{$value['qty']}}</td>
            <td>{{$total}}</td>
        </tr>
        @endforeach
        <tr>
            <td colspan="3"><b>Tổng công: </b></td>
            <td>{{$data['total']}}</td>
        </tr>
    </table>
</body>
</html>