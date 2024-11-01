package com.example.demo.controller;

import com.example.demo.entity.SanPham;
import com.example.demo.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("san-pham")
public class ControllerQLSP {
    @Autowired
    private SanPhamRepository sanPhamRepository;

    @GetMapping("hien-thi")
    public String index(Model model){
        List<SanPham> ds = this.sanPhamRepository.findAll();
        model.addAttribute("dataSP",ds);
        return "san_pham/index";
    }


    @RequestMapping("use")
    public String use(){
        return "thong_ke/index";
    }
}
