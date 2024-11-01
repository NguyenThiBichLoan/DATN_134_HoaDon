package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "danhMuc")
public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String tenDanhMuc;
    private String moTa;
    private String trangThai;
}
//    CREATE TABLE danhMuc (
//        id INT IDENTITY(1,1) PRIMARY KEY,
//    tenDanhMuc NVARCHAR(100) NOT NULL,
//    moTa NVARCHAR(255),
//    trangThai NVARCHAR(50)
//);