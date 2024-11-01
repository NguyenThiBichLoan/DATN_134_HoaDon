package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.ManyToAny;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@Entity
@Table(name = "chiTietSanPham")
public class CTSP {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private float donGia;
    private int soLuong;
    private int sanPham_id;
    private int size_id;
    private int mauSac_id;
    private int chatLieu_id;
    private String moTa;
    private String anhSanPham;
    private String maBarcode;
    @ManyToOne @JoinColumn(name = "mauSac_id", insertable = false, updatable = false)
    private MauSac mauSac;
    @ManyToOne @JoinColumn(name = "size_id", insertable = false, updatable = false)
    private Size size;
    @ManyToOne @JoinColumn(name = "chatLieu_id" , insertable = false, updatable = false)
    private ChatLieu chatLieu;
    @ManyToOne @JoinColumn(name = "sanPham_id", insertable = false, updatable = false)
    private SanPham sanPham;


}
