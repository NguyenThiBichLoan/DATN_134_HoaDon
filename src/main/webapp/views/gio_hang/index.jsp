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
    <title>Giỏ hàng</title>
</head>
<body>
<div class="container">
    <table class="table table-bordered" border="2">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Mô tả</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Kích cỡ</th>
            <th>Trạng thái</th>
            <th colspan="2">Thao tac</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${data}" var="cart">
            <tr>
                <td>${cart.ID}</td>
                <td>${cart.TenSP}</td>
                <td>${cart.MoTa}</td>
                <td>${cart.SoLuong}</td>
                <td>${cart.Gia}</td>
                <td>${cart.kichCo}</td>
                <td>${cart.TrangThai ==1 ? "Chua thanh toan": "Da thanh toan"}</td>
                <td>
                    <button><a href="/gio-hang/edit/${cart.ID}">Update</a></button>
                </td>
                <td>
                    <button><a href="/gio-hang/delete/${cart.ID}">Delete</a></button>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>