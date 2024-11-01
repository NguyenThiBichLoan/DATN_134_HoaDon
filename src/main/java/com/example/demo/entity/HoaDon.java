package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@Entity
@Table(name = "hoaDon")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "taiKhoan_id")
    private int taiKhoan_id;
    @Column(name = "kh_id")
    private int kh_id;
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    @Temporal(TemporalType.DATE)
    @Column(name = "ngayLap")
    private Date ngayLap;
    @Column(name = "tongTien")
    private float tongTien;
    @Column(name = "trangThaiThanhToan")
    private String trangThaiThanhToan;
    @Column(name = "hinhThucThanhToan")
    private String hinhThucThanhToan;
    @ManyToOne
    @JoinColumn(name = "taiKhoan_id", insertable = false, updatable = false)
    private TaiKhoan taiKhoan;
    @ManyToOne
    @JoinColumn(name = "id", insertable = false, updatable = false)
    private SanPham sanPham;
    @ManyToOne
    @JoinColumn(name = "id", insertable = false, updatable = false)
    private DanhMuc danhMuc;

}
