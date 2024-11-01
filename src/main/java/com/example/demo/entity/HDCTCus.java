package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class HDCTCus {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private int hoaDon_id;
    private int ctsp_id;
    private int soLuong;
    private float donGia;
    private float thanhTien;
    private String tenSanPham;
}
