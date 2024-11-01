<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Hoa don</title>
</head>
<body><br>
<div class="container">
    ID :                   ${hoadon.ID}<br>
    ID Tai khoan :         ${hoadon.taiKhoanId}<br>
    ID khach hang :        ${hoadon.khId}<br>
    Ngay lap :             ${hoadon.ngay_lap}<br>
    Tong tien :            ${hoadon.tong_tien}<br>
    Trang thai thanh toan :${hoadon.trang_thai_thanh_toan}<br>
    Hinh thuc thanh toan : ${hoadon.hinh_thuc_thanh_toan}<br>
    <button class="btn btn-dark"><a href="/hoa-don/hien-thi">Back</a></button>
</div>

</body>
</html>