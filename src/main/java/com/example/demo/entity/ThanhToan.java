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
@Table(name = "thanhToan")
public class ThanhToan {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer id;

    private int kh_id;

    private int hoaDon_id;

    @DateTimeFormat(pattern = "yyyy/MM/dd")
    @Temporal(TemporalType.DATE)
    private Date ngayThanhToan;

    private float soTien;

    private String hinhThucThanhToan;

    private String trangThai;
}
