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
    <title>Document</title>
</head>
<body><br>
<div class="container">
    <div class="d-flex justify-content-end mb-0">
        <a href="/hoa-don/tao-moi" class="btn btn-primary">Tạo hóa đơn</a>
    </div>
    <table class="table table-bordered table-hover table-striped mt-5">
        <thead>
        <tr>
            <th>Ma san pham</th>
            <th>Ten san pham</th>
            <th>Ngay nhap</th>
            <th>Danh muc san pham</th>
            <th>Trang thai</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="hoaDon">
            <tr>
                <td>${hoaDon.sanPham.maSanPham}</td>
                <td>${hoaDon.sanPham.tenSanPham}</td>
                <td>${hoaDon.sanPham.ngayNhap}</td>
                <td>${hoaDon.danhMuc.tenDanhMuc}</td>
                <td>${hoaDon.sanPham.trangThai}</td>

                <td style="width: 1px;" class="text-nowrap">
                    <button class="btn btn-primary btn-sm">Xem</button>
                    <button class="btn btn-warning btn-sm">Sua</button>
                    <button class="btn btn-danger btn-sm">Xoa</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <!-- Khu vực phân trang -->
    <div class="d-flex justify-content-center " style="margin-top: 30px;">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>
</div>
</body>
</html>