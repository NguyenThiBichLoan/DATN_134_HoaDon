package com.example.demo.repository;

import com.example.demo.entity.HoaDon;
import com.example.demo.entity.HoaDonCus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HoaDonRepository extends JpaRepository<HoaDonCus, Integer>, CustomHoaDonRepository {
    @Override
    <S extends HoaDonCus> S save(S entity);


}
