package com.example.demo.service;

import com.example.demo.entity.HDCT;
import com.example.demo.entity.HoaDon;
import com.example.demo.repository.CustomHoaDonRepository;
import com.example.demo.repository.HDCT_Repository;
import com.example.demo.repository.HDfin;
import com.example.demo.repository.HoaDonRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonService {

    @Autowired
    private CustomHoaDonRepository hoaDonRepository;
    @Autowired
    private HDfin hDfin;
    @Autowired
    private HDCT_Repository hdctRepository;

    public boolean thd() {
        return hoaDonRepository.insethd();
    }

    public List<HoaDon> getHoaDonsChoThanhToan() {
        return hDfin.findByTrangThaiThanhToan("Cho thanh toan");
    }

    @Transactional
    public String addGioHang(int maHD, int maCTSP, int soLuongThem, float donGia) {
        List<HDCT> listHDCT = hdctRepository.findByHoaDon_id(maHD);

        for (HDCT hdct : listHDCT) {
            if (hdct.getCtsp_id() == maCTSP) {
                int soLuongTrung = hdct.getSoLuong() + soLuongThem;
                float thanhTien2 = soLuongTrung * donGia;
                hdct.setSoLuong(soLuongTrung);
                hdct.setDonGia(donGia);
                hdctRepository.save(hdct);
                return "Thành công";
            }
        }

        // Nếu sản phẩm chưa tồn tại trong hóa đơn, thêm sản phẩm mới
        HDCT newHDCT = new HDCT();
        newHDCT.setCtsp_id(maCTSP);
        newHDCT.setHoaDon_id(maHD);
        newHDCT.setSoLuong(soLuongThem);
        newHDCT.setDonGia(donGia);
        hdctRepository.save(newHDCT);

        return "Thành công";
    }


}
