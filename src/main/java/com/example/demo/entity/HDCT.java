package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@Entity
@Table(name = "hoaDonChiTiet")
public class HDCT {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private int hoaDon_id;
    private int ctsp_id;
    private int soLuong;
    private float donGia;
    private float thanhTien;
    @ManyToOne @JoinColumn(name = "ctsp_id", insertable = false, updatable = false)
    private CTSP ctsp;
    @ManyToOne @JoinColumn(name = "hoaDon_id",insertable = false, updatable = false)
    private HoaDon hoaDon;

    @ManyToOne
    @JoinColumn(name = "sanPham_id",insertable = false, updatable = false)
    private SanPham sanPham;

    // Getters và Setters

}
