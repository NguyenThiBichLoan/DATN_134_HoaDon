package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("nhan-vien")
public class ControllerNhanVien {

    @GetMapping("hien-thi")
    public String index(){
        return "nhan_vien/index";
    }
}
