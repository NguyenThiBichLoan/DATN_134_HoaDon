<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body ng-app="myApp">
<div ng-controller="adminCtrl" style="background-color: rgb(37, 244, 5)">
    <!-- Khu vuc header -->
    <!-- Copy noi dung navbar vua demo la duoc -->
    <!-- bo sung them shadow -->
    <nav class="navbar navbar-expand-sm bg-light shadow">
        <div class="container-fluid">
            <!-- logo -->
            <a href="#">
                <img src="https://t3.ftcdn.net/jpg/04/86/45/16/360_F_486451692_j8hWh9dz9PxVovYGX5n0Sgx8jzONjDBD.jpg" alt="" style="max-height: 80px;">
            </a>
            <!-- Thong tin user -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link disabled text-dark" href="#">HELLO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled text-dark" href="#">Loguot</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- Khu vuc noi dung gom 2 phan -->
    <!-- 1.Menu (nav) | Nam ben trai|do rong khoang 250px -->
    <!-- 2.Noi dung chinh cua trang| nam ben phai | do rong la phan con lai width: cacl(100%) -->
    <!-- 3. Them class .d-flex o the div cha de noi dung co len 1 dong -->
    <!-- 4.Su li chieu cao cua menu (nav) | set css. min-height: cacl(100vh - xxpx) -->
    <div class="d-flex">
        <div class="bg-light pt-3" style="width: 250px; min-height: calc(100vh - 66px);">
            <ul class="nav flex-column ">
                <li class="nav-item">
                    <a class="nav-link " href="/san-pham/hien-thi">Quan Ly San Pham</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ban-hang/hien-thi">Ban Hang</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/nhan-vien/hien-thi">Quan Ly Nhan Vien</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/hoa-don/hien-thi">Quan Ly Hoa Don</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/khuyen-mai/hoa-don">Quan Ly Khuyen Mai</a>
                </li>
            </ul>
        </div>

        <!-- Khu vuc noi dung chinh -->

        <!-- Khu vuc noi dung chinh -->
        <div class="pt-3" style="width: calc(100% - 250px);">
            <div class="container">
                <h3>Quan Ly San Pham</h3>

                <form action="">
                    <div>
                        <table class="table table-bordered table-hover table-striped mt-5">
                            <thead>
                            <tr>
                                <th>Ma san pham</th>
                                <th>Ten san pham</th>
                                <th>Ngay nhap</th>
                                <th>Danh muc san pham</th>
                                <th>Trang thai</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${dataSP}" var="sp">
                                <tr>
                                    <td>${sp.maSanPham}</td>
                                    <td>${sp.tenSanPham}</td>
                                    <td>${sp.ngayNhap}</td>
                                    <td>${sp.danhMuc.tenDanhMuc}</td>
                                    <td>${sp.trangThai}</td>

                                    <th style="width: 1px;" class="text-nowrap">
                                        <button class="btn btn-primary btn-sm">Xem</button>
                                        <button class="btn btn-warning btn-sm">Sua</button>
                                        <button class="btn btn-danger btn-sm">Xoa</button>
                                    </th>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                        <!-- Khu vực phân trang -->
                    </div>
                    <div class="d-flex justify-content-center " style="margin-top: 30px;">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div class="pt-3" style="width: calc(100% - 250px);">
        <div class="container">
            <div ng-view></div>
        </div>
    </div>
</div>


</div>
</body>
</html>
