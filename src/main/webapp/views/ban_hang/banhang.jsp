<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${not empty nhanVien}">
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
<body>
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
                <h3>Hoa Don</h3>
                <c:if test="${not empty message}">
                    <div class="alert alert-warning" role="alert">
                            ${message}
                    </div>
                </c:if>
                <form action="/ban-hang/thd" method="post">

                    <td style="display: flex; justify-content: right;">
                        <button class="btn btn-primary btn-sm">Tao hoa don</button>
                    </td>


                    <div>
                        <table class="table table-bordered table-hover table-striped mt-5">
                            <thead>
                            <tr>
                                <th>Ma</th>
                                <th>Ngay Tao</th>
                                <th>Ten Nhan Vien</th>
                                <th>Trang Thai</th>
                                <th>TT</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${data}" var="hd">
                                <tr>
                                    <td>${hd.id}</td>
                                    <td>${hd.ngayLap}</td>
                                    <td>${hd.taiKhoan.tenDangNhap}</td>
                                    <td>${hd.trangThaiThanhToan}</td>
                                    <th style="width: 1px;" class="text-nowrap">
                                        <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#addProductModal">Them san pham</button>
                                        <button type="button" class="btn btn-danger mb-3"><a style="color: white" href="/ban-hang/delete/${hd.id}">Huy hoa don</a></button>
                                    </th>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </form>


                <!-- Modal Thêm Sản Phẩm -->
                <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="addProductModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document"> <!-- Thêm lớp modal-lg để mở rộng kích thước -->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addProductModalLabel">Them san pham vao gio hang</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>

                                    <table class="table table-bordered table-hover table-striped mt-5">
                                        <thead>
                                        <tr>
                                            <th>Ma CTSP</th>
                                            <th>Ten San Pham</th>
                                            <th>So Luong</th>
                                            <th>Mau Sac</th>
                                            <th>Size</th>
                                            <th>Chat Lieu</th>
                                            <th>Don Gia</th>
                                            <th>Anh san pham</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${dataSP}" var="sp">
                                            <tr>
                                                <td>${sp.id}</td>
                                                <td>${sp.sanPham.tenSanPham}</td>
                                                <td>${sp.soLuong}</td>
                                                <td>${sp.mauSac.tenMau}</td>
                                                <td>${sp.size.tenSize}</td>
                                                <td>${sp.chatLieu.tenChatLieu}</td>
                                                <td>${sp.donGia}</td>
                                                <td><img ng-src="${sp.anhSanPham}" style="width: 100px; height: auto;"></td>
                                                <th style="width: 1px;" class="text-nowrap">
                                                    <form action="/ban-hang/addGioHang" method="post">
                                                        <input name="maHD" value="${maHD}">
                                                    <button class="btn btn-primary btn-sm">Chon</button>
                                                    </form>
                                                </th>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>--%>
<%--                                <button type="button" class="btn btn-primary">Lưu</button>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                </div>






















                <div class="container mt-2" style="min-height: calc(50vh - 61px);">

                    <!-- Xác nhận đơn hàng -->
                    <div class="">
                        <!-- Danh sách sản phẩm -->
                        <div class=" product-list">
                            <h2>Danh sach san pham da chon</h2>
                            <table class="table table-bordered table-hover table-striped mt-5">
                                <thead>
                                <tr>
                                    <th>Ma CTSP</th>
                                    <th>Ten San pham</th>
                                    <th>So Luong</th>
                                    <th>Don Gia</th>
                                    <th>Thanh Tien</th>
                                    <th colspan="2">TT</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- Sản phẩm 1 -->
                                <tr>
                                <c:forEach var="hdct" items="${datahd}">
                                    <td>${hdct.ctsp_id}</td>
                                    <td>${hdct.hoaDon_id}</td>
                                    <td>${hdct.soLuong}</td>
                                    <td>${hdct.donGia}</td>
                                    <td></td>
                                    <th>
                                        <button class="btn btn-warning btn-sm">Sua</button>
                                        <button class="btn btn-danger btn-sm">Xoa</button>
                                    </th>
                                </c:forEach>
                                </tr>
                                </tbody>
                            </table>


                        </div>

                        <!-- Form thông tin người mua -->




                        <div class="mb-auto mt-5">
                            <h2>Thong tin hoa don</h2>
                            <form>
                                <div class="form-group mt-3">
                                    <label class="form-label">Ma hoa don:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.hoTen">
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Ngay tao:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.diaChi">
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Ten nhan vien:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.soDienThoai">
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Ten khach hang:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.soDienThoai">
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">So dien thoai:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.soDienThoai">
                                </div>

                                <div class="form-group mt-3">
                                    <label class="form-label">Ma giam gia:</label>
                                    <select class="custom-select">
                                        <option>-----Ma giam gia-----</option>
                                        <option>10k</option>
                                        <option>15k</option>
                                    </select>
                                </div>
                                <div>
                                    <h5 class="mt-3">Tong cong: <span class="text-danger"></span></h5>
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Tien khach dua:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.gmail">
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Tien thua:</label>
                                    <input class="form-control" placeholder="" ng-model="xacNhanDonHang.gmail">
                                </div>
                            </form>

                        </div>

                        <br>
                    </div>
                    <div>
                        <h3>Hinh thuc thanh toan:</h3>
                        <select name="" class="custom-select custom-select-lg">
                            <option name="">Tien mat</option>
                            <option name="">Chuyen khoan</option>
                            <option name="">Tien mat + chuyen khoan</option>
                        </select>
                    </div>

                    <!-- Nút Xác nhận đơn hàng -->
                    <div class="row mt-4 mb-3">
                        <div class="col-md-6 offset-md-6">
                            <button type="button" class="btn btn-primary btn-block">Xác nhận đơn hàng</button>
                        </div>
                    </div>











                </div>
        </div>
    </div>
</div>


</div>
</body>
</html>
</c:if>