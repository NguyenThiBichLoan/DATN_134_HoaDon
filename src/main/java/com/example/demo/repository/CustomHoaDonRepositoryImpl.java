package com.example.demo.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CustomHoaDonRepositoryImpl implements CustomHoaDonRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public boolean insethd() {
        String countSql = "SELECT COUNT(*) FROM hoaDon WHERE trangThaiThanhToan = 'Cho thanh toan'";
        Number countResult = (Number) entityManager.createNativeQuery(countSql).getSingleResult();
        Long count = countResult.longValue();

        if (count < 5) {
            String sql = "INSERT INTO hoaDon (taiKhoan_id, kh_id, ngayLap, tongTien, trangThaiThanhToan, hinhThucThanhToan) VALUES (3, 1, CURRENT_TIMESTAMP, 0.00, 'Cho thanh toan', 'tien mat')";
            entityManager.createNativeQuery(sql).executeUpdate();
            return false; // Chưa đạt giới hạn
        } else {
            return true; // Đã đạt giới hạn
        }
    }
}
