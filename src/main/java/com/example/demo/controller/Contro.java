package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Contro {

    @RequestMapping("/trang-chu/hien-thi")
    public String tsd(){
        return "thong_ke/index";
    }

    @RequestMapping("use")
    public String use(){
        return "thong_ke/use";
    }
}
