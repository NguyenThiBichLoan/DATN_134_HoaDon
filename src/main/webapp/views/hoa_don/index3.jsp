<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Chi tiết hóa đơn</h2>
<p>Mã hóa đơn: ${hoaDon.id}</p>
<p>Ngày lập: ${hoaDon.ngayLap}</p>
<p>Tổng tiền: ${hoaDon.thanhTien}</p>
<p>Trạng thái thanh toán: ${hoaDon.trangThaiThanhToan}</p>

<h3>Danh sách sản phẩm trong hóa đơn</h3>
<p>Tên sản phẩm: ${chiTietSanPham.tenSanPham}</p>
<p>Số lượng: ${chiTietSanPham.soLuong}</p>
<p>Đơn giá: ${chiTietSanPham.donGia}</p>
<p>Thành tiền: ${chiTietSanPham.thanhTien}</p>
</body>
</html>