package com.example.demo.repository;

import com.example.demo.entity.HDCT;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HDCT_Repository extends JpaRepository<HDCT, Integer> {
    List<HDCT> findByHoaDon_id(int hoaDon_id);
}
