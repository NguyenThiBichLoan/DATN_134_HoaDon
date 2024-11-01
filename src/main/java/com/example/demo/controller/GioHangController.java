package com.example.demo.controller;

import com.example.demo.entity.GioHang;
import com.example.demo.repository.GioHangRepository;
import com.example.demo.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GioHangController {
    @Autowired
    private GioHangRepository repo;
    @GetMapping("/gio-hang/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("list",repo.findAll());
        return "gio_hang/index";
    }



}