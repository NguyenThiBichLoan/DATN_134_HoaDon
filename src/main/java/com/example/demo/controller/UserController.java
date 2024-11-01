package com.example.demo.controller;

import com.example.demo.entity.SanPham;
import com.example.demo.entity.TaiKhoan;
import com.example.demo.repository.SanPhamRepository;
import com.example.demo.repository.TaiKhoanRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/dang-nhap")
public class UserController {
    @Autowired
    TaiKhoanRepository repo;
    @Autowired
    SanPhamRepository sanPhamRepository;

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("nv", new TaiKhoan());
        return "dang_nhap/login";
    }

    @PostMapping("/LoginServlet")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model, HttpSession session) {
        Optional<TaiKhoan> optionalTaiKhoan = repo.findByTenDangNhap(username);

        if (optionalTaiKhoan.isPresent()) {
            TaiKhoan taiKhoan = optionalTaiKhoan.get();
            if (taiKhoan.getMatKhau().equals(password)) {
                String anVien = (String) session.getAttribute("nhanVien");
                model.addAttribute("nhanVien", anVien);
                session.setAttribute("nhanVien", username);

                model.addAttribute("admin", password);
                return "redirect:/dang-nhap/index"; // Chuyển hướng sau khi đăng nhập thành công
            }
        }

        // Trường hợp username hoặc password không hợp lệ
        model.addAttribute("error", "Invalid username or password");
        return "dang_nhap/login";
    }


    @GetMapping("index")
    public String home(Model model) {
        List<SanPham> ds = this.sanPhamRepository.findAll();
        model.addAttribute("dataSP",ds);
        return "dang_nhap/index"; // Trả về trang index.jsp
    }




    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/dang-nhap/login";
    }

}
