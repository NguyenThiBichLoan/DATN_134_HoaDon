<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@page language="java" pageEncoding="UTF-8" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport"--%>
<%--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
<%--    <title>Hoa don</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--&lt;%&ndash;    <form action="/hoa-don/add" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">ID</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <input type="text" class="form-control" name="ID" value="${hoadon.ID}">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">ID Tai khoan</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <input type="text" class="form-control" name="taiKhoanId" value="${hoadon.taiKhoanId}">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">ID khach hang</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <input type="text" class="form-control" name="khId" value="${hoadon.khId}">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">Ngay lap</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <input type="text" class="form-control" name="ngay_lap" value="${hoadon.ngay_lap}">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">Tong tien</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <input type="text" class="form-control" name="tong_tien" value="${hoadon.tong_tien}">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">Trang thai thanh toan</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <select class="form-select" name="trang_thai_thanh_toan">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <option value="1">Da thanh toan</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <option value="2">Chua thanh toan</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </select>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="mb-3 mt-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-label">Hinh thuc thanh toan</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <select class="form-select" name="hinh_thuc_thanh_toan">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <option value="1">Chuyen khoan</option>thi&ndash;%&gt;--%>
<%--&lt;%&ndash;                <option value="2">Tien mat</option>&ndash;%&gt;--%>

<%--&lt;%&ndash;            </select>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;        <button class="btn btn-primary"><a href="/hoa-don/hien-thi">Add</a></button>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>

<%--    <form action="/hoa-don/add" method="post">--%>
<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">ID</label>--%>
<%--            <input type="text" class="form-control" name="id" value="${hoadon.ID}" readonly>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">ID Tài Khoản</label>--%>
<%--            <input type="text" class="form-control" name="taiKhoanId" value="${hoadon.taiKhoanId}" required>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">ID Khách Hàng</label>--%>
<%--            <input type="text" class="form-control" name="khId" value="${hoadon.khId}" required>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">Ngày Lập</label>--%>
<%--            <input type="date" class="form-control" name="ngayLap" value="${hoadon.ngay_lap}" required>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">Tổng Tiền</label>--%>
<%--            <input type="number" class="form-control" name="tongTien" value="${hoadon.tong_tien}" required>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">Trạng Thái Thanh Toán</label>--%>
<%--            <select class="form-select" name="trangThaiThanhToan" required>--%>
<%--                <option value="Da thanh toan">Đã Thanh Toán</option>--%>
<%--                <option value="Chua thanh toan">Chưa Thanh Toán</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">Hình Thức Thanh Toán</label>--%>
<%--            <select class="form-select" name="hinhThucThanhToan" required>--%>
<%--                <option value="Chuyen khoan">Chuyển Khoản</option>--%>
<%--                <option value="Tien mat">Tiền Mặt</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn btn-primary">Add</button>--%>
<%--    </form>--%>



<%--</div>--%>

<%--</body>--%>
<%--</html>--%>