//package com.example.demo.controller;
//
//import com.example.demo.entity.HoaDon;
//import com.example.demo.repository.HoaDonRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.List;
//
//@Controller
//public class HoaDonController {
//    @Autowired
//    private HoaDonRepository hoaDonRepository;
//
//    // Hiển thị tất cả hóa đơn
//    @GetMapping("/hoa-don/hien-thi")
//    public String hienThi(Model model) {
//        model.addAttribute("list", hoaDonRepository.findAll());
//        return "hoa_don/index";
//    }
//
//
//        // Lọc hóa đơn theo trạng thái thanh toán
//    @GetMapping("/hoa-don/trang-thai")
//    public String filterByStatus(@RequestParam String trang_thai_thanh_toan, Model model) {
//        List<HoaDon> hoaDons = hoaDonRepository.findByTrangThaiThanhToan(trang_thai_thanh_toan);
//        model.addAttribute("list", hoaDons);
//        return "hoa_don/index";
//    }
//
//    // Xem chi tiết hóa đơn
//    @GetMapping("/hoa-don/detail/{ID}")
//    public String detail(@PathVariable Integer ID, Model model) {
//        HoaDon hoaDon = hoaDonRepository.findById(ID).orElse(null);
//        model.addAttribute("hoadon", hoaDon);
//        return "hoa_don/detail";
//    }
//
//
//
//    // Hiển thị form thêm mới hóa đơn
//    @GetMapping("/hoa-don/view-add")
//    public String viewAdd() {
//        return "hoa_don/add";
//    }
//
//    // Xử lý thêm mới hóa đơn
//    @PostMapping("/hoa-don/add")
//    public String add(HoaDon hoaDon) {
//        System.out.println("HoaDon: " + hoaDon);
//        hoaDonRepository.save(hoaDon);
//        return "redirect:/hoa-don/hien-thi";
//    }
//
//    // Hiển thị form cập nhật hóa đơn
//    @GetMapping("/hoa-don/view-update/{ID}")
//    public String viewUpdate(@PathVariable Integer ID, Model model) {
//        HoaDon hoaDon = hoaDonRepository.findById(ID).orElse(null);
//        model.addAttribute("hoadon", hoaDon);
//        return "hoa_don/edit";
//    }
//
//    // Xử lý cập nhật hóa đơn
//    @PostMapping("/hoa-don/update/{id}")
//    public String update(HoaDon hoaDon) {
//        hoaDonRepository.save(hoaDon);
//        return "redirect:/hoa-don/hien-thi";
//    }
//
//    // Xóa hóa đơn theo ID
//    @GetMapping("/hoa-don/delete/{ID}")
//    public String delete(@PathVariable Integer ID) {
//        hoaDonRepository.deleteById(ID);
//        return "redirect:/hoa-don/hien-thi";
//    }
//
//}
