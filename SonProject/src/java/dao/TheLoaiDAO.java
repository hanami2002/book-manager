/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.TheLoai;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hanami
 */
public class TheLoaiDAO extends DBContextMySQL{
    PreparedStatement ps = null;
    ResultSet rs = null;
    public TheLoai getTheLoaiById(int theloaiId) {
        String query = "SELECT * FROM theloai WHERE tid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, theloaiId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new TheLoai(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Get all Theloai from the database
     *
     * @return a list of Theloai objects representing all Theloai in the database
     */
    public List<TheLoai> getAllTheLoai() {
        List<TheLoai> theloaiList = new ArrayList<>();
        String query = "SELECT * FROM theloai";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TheLoai theloai = new TheLoai(rs.getInt(1), rs.getString(2));
                theloaiList.add(theloai);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return theloaiList;
    }
}
