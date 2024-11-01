






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
                        <a class="nav-link " href="qlsp">Quan Ly San Pham</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#!tao-moi-san-pham">Ban Hang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#!danh-sach-danh-muc">Quan Ly Nhan Vien</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#!tao-moi-danh-muc">Quan Ly Thong Ke</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">Quan Ly Khuyen Mai</a>
                    </li>
                </ul>
            </div>

            <!-- Khu vuc noi dung chinh -->



            <!-- Khu vuc noi dung chinh -->
            <div class="container mt-2" style="min-height: calc(50vh - 61px);">

                <!-- Xác nhận đơn hàng -->
                <div class="">
                    <!-- Danh sách sản phẩm -->
                    <div class=" product-list">
                        <h2>Danh sach san pham</h2>
                        <table class="table table-bordered table-hover table-striped mt-5">
                            <thead>
                            <tr>
                                <th scope="col">Hinh anh</th>
                                <th scope="col">San pham</th>
                                <th scope="col">Gia</th>
                                <th scope="col">Thao tac</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- Sản phẩm 1 -->
                            <tr ng-repeat="item in giohang">
                                <td id="khunganh">
                                    <!-- Khai báo thẻ div kiểm soát khung của ảnh -->
                                    <div class="bg-light rounded border overflow-hidden d-flex justify-content-center align-items-center"
                                         style="width: 80px; height: 80px;">
                                        <img ng-src="{{item.anh}}" class="mw-100 mh-100">
                                    </div>
                                </td>
                                <td><a href="#!chi-tiet-san-pham-kh/{{item.id}}">{{item.ten}}</a></td>
                                <td>{{item.gia}}</td>
                                <th>
                                    <button class="btn btn-danger btn-sm" ng-click="removeFromCart(item.id)">Xoa</button>
                                </th>
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
                        <div class="d-flex justify-content-between">
                            <button type="button" class="btn btn-danger btn-lg">Huy hoa don</button>
                            <button type="button" class="btn btn-primary btn-lg">Thanh Toan</button>
                        </div>
                    </div>
                </div>




            </div>
        </div>





    </div>
    </body>
    </html>
