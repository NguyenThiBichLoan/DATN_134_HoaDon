package com.example.demo.controller;

import com.example.demo.entity.HoaDon;
import com.example.demo.entity.HDCT;
import com.example.demo.entity.CTSP;
import com.example.demo.repository.HDfin;
import com.example.demo.repository.HoaDonRepository;
import com.example.demo.repository.SanPhamRepository;
import com.example.demo.repository.CTSP_Repository;
import com.example.demo.repository.HDCT_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Date;
import java.util.Optional;

@Controller
//@RequestMapping("hoa-don")
public class ControllerHoaDon {

    @Autowired
    private HDfin hDfin;
    @Autowired
    private HoaDonRepository hoaDonRepository;
    @Autowired
    private SanPhamRepository sanPhamRepository;
    @Autowired
    private CTSP_Repository ctsp_repository;
    @Autowired
    private HDCT_Repository hdctRepository;

    @GetMapping("/hoa-don/hien-thi")
    public String index(Model model) {
        model.addAttribute("list", hDfin.findAll());
        return "hoa_don/index1";
    }

    @GetMapping("/hoa-don/tao-moi")
    public String hienThiFormTaoHoaDon(Model model) {
        model.addAttribute("hoaDon", hoaDonRepository.findAll());
        return "hoa_don/index2";
    }

    @PostMapping("/hoa-don/tao-moi")
    public String taoHD(
            @ModelAttribute HoaDon hoaDon,
            @RequestParam("maSanPham") String maSanPham,
            @RequestParam("soLuong") int soLuong,
            Model model
    ) {

        hoaDon.setNgayLap(new Date());
        hoaDon.setTrangThaiThanhToan("Chua thanh toan");
        hoaDon.setTongTien(0);
        hoaDonRepository.save(hoaDon);

        Optional<CTSP> chiTietSanPhamOpt = ctsp_repository.findByMaSanPham(maSanPham);
        if (chiTietSanPhamOpt.isPresent()) {
            CTSP chiTietSanPham = chiTietSanPhamOpt.get();

            // Tạo mới chi tiết hóa đơn
            HDCT hoaDonChiTiet = new HDCT();
            hoaDonChiTiet.setHoaDon(hoaDon);
            hoaDonChiTiet.setCtsp(chiTietSanPham);
            hoaDonChiTiet.setSoLuong(soLuong);
            hoaDonChiTiet.setDonGia(chiTietSanPham.getDonGia());
            hoaDonChiTiet.setThanhTien(soLuong * chiTietSanPham.getDonGia());

            // Lưu chi tiết hóa đơn vào cơ sở dữ liệu
//            hoaDonRepository.save(hoaDon);

            hdctRepository.save(hoaDonChiTiet);
            // Cập nhật tổng tiền của hóa đơn
            hoaDon.setTongTien(hoaDon.getTongTien() + hoaDonChiTiet.getThanhTien());
            hoaDonRepository.save(hoaDon);

            model.addAttribute("hoaDon", hoaDon);
            model.addAttribute("chiTietSanPham", chiTietSanPham);
            return "hoa_don/index3";
        } else {
            model.addAttribute("error", "Không tìm thấy sản phẩm với mã " + maSanPham);
            return "hoa-don/index2";
        }
    }


}
