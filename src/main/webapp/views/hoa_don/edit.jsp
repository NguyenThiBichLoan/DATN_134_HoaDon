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
<body>
<%--<form action="/update/${cate.id}" method="post">--%>
<%--    Category code: <input type="text" name="categoryCode" value="${cate.categoryCode}" class="form-control"/>--%>
<%--    <br/>--%>
<%--    Category name: <input type="text" name="categoryName" value="${cate.categoryName}" class="form-control"/>--%>
<%--    <br/>--%>
<%--    <button type="submit" class="btn btn-primary">Update</button>--%>
<%--    <br>--%>
<%--</form>--%>

<div class="container">
    <form action="/hoa-don/update/${hoadon.ID}" method="post">
        <div class="mb-3 mt-3">
            <label class="form-label">ID</label>
            <input type="text" class="form-control" name="ID" value="${hoadon.ID}"/>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">ID Tai khoan</label>
            <input type="text" class="form-control" name="taiKhoanId" value="${hoadon.taiKhoanId}"/>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">ID khach hang</label>
            <input type="text" class="form-control" name="khId" value="${hoadon.khId}"/>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Ngay lap</label>
            <input type="text" class="form-control" name="ngay_lap" value="${hoadon.ngay_lap}"/>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Tong tien</label>
            <input type="text" class="form-control" name="tong_tien" value="${hoadon.tong_tien}"/>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Trang thai thanh toan</label>
            <select class="form-select" name="trang_thai_thanh_toan">
                <option value="1">Da thanh toan</option>
                <option value="2">Chua thanh toan</option>
            </select>
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Hinh thuc thanh toan</label>
            <select class="form-select" name="hinh_thuc_thanh_toan">
                <option value="1">Chuyen khoan</option>
                <option value="2">Tien mat</option>

            </select>
        </div>

        <button class="btn btn-primary">Update</button>
    </form>
</div>



</body>
</html>