package com.example.demo.repository;

import com.example.demo.entity.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SanPhamRepository extends JpaRepository<SanPham, Integer> {

    //    SanPham findByMaSanPham(String maSanPham);
    SanPham findByMaSanPham(String maSanPham);
}
