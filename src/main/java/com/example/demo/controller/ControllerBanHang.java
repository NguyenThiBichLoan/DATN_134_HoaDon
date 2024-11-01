package com.example.demo.controller;

import com.example.demo.entity.*;
import com.example.demo.repository.*;
import com.example.demo.service.HoaDonService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("ban-hang")
public class ControllerBanHang {
    @Autowired
    private HoaDonService hoaDonService;
    @Autowired
    private HoaDonRepository hoaDonRepository;
    @Autowired
    private CTSP_Repository ctsp_repository;
    @Autowired
    private HDfin hDfin;
    @Autowired
    private KhachHangRepository hangRepository;
    @Autowired
    private HDCT_Repository hdctRepository;


    @GetMapping("hien-thi")
    public String index(Model model){
        List<HoaDon> ds = this.hoaDonService.getHoaDonsChoThanhToan();
        model.addAttribute("data",ds);
        List<CTSP> dd = this.ctsp_repository.findAll();
        model.addAttribute("dataSP", dd);
        return "ban_hang/banhang";
    }

    @PostMapping("addgh")
    public String adgh(@Valid CTSP ctsp, @Valid HDCT hdct,@Valid SanPham sanPham){
        CTSP ct = new CTSP();
        return "redict:/ban-hang/hien-thi";
    }


    @PostMapping("thd")
    public String thd(RedirectAttributes redirectAttributes) {
        boolean isLimitReached = hoaDonService.thd();

        if (isLimitReached) {
            redirectAttributes.addFlashAttribute("message", "Đã đạt giới hạn 5 hóa đơn chờ thanh toán.");
        } else {
            redirectAttributes.addFlashAttribute("message", "Tạo hóa đơn thành công.");
        }

        return "redirect:/ban-hang/hien-thi";
    }


    @GetMapping("update/{id}")
    public String update(@PathVariable("id") Integer id, Model model){
        KhachHang kh = this.hangRepository.findById(id).orElse(null);
        model.addAttribute("kh",kh);
        return "ban_hang/banhang";
    }

    @GetMapping("/addGioHang")
    public String showAddGioHangPage(Model model) {
        List<HDCT> ds = this.hdctRepository.findAll();
        model.addAttribute("datahd", ds);
        // Chuẩn bị các dữ liệu ban đầu nếu cần và thêm vào model
        return "addGioHang"; // Trả về trang addGioHang.html (nếu dùng Thymeleaf)
    }

    @PostMapping("/addGioHang")
    public String addGioHang(
            @RequestParam int maHD,
            @RequestParam int maCTSP,
            @RequestParam int soLuongThem,
            @RequestParam float donGia,
            Model model
    ) {
        String result = hoaDonService.addGioHang(maHD, maCTSP, soLuongThem, donGia);
        model.addAttribute("result", result);

        // Có thể cập nhật dữ liệu giỏ hàng, hóa đơn, hoặc thêm dữ liệu khác
        return "redirect:/ban-hang/hien-thi"; // Trả về lại trang addGioHang.html cùng với dữ liệu cập nhật
    }




    @GetMapping("delete/{id}")
    public String  delete(@PathVariable("id") Integer id){
        this.hDfin.deleteById(id);
        return "redirect:/ban-hang/hien-thi";
    }









}
