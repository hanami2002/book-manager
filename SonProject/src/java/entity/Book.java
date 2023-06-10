/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author Hanami
 */
public class Book {
    private int bid;
    private String tieude;
    private String anhbia;    
    private String tacgia;
    private String mota;
    private Date phathanh;
    private int sotrang;
    private int theloai;
    private int daban;

    public Book() {
    }

    public Book(int bid, String tieude, String anhbia, String tacgia, String mota, Date phathanh, int sotrang, int theloai, int daban) {
        this.bid = bid;
        this.tieude = tieude;
        this.anhbia = anhbia;
        this.tacgia = tacgia;
        this.mota = mota;
        this.phathanh = phathanh;
        this.sotrang = sotrang;
        this.theloai = theloai;
        this.daban = daban;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getAnhbia() {
        return anhbia;
    }

    public void setAnhbia(String anhbia) {
        this.anhbia = anhbia;
    }

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public Date getPhathanh() {
        return phathanh;
    }

    public void setPhathanh(Date phathanh) {
        this.phathanh = phathanh;
    }

    public int getSotrang() {
        return sotrang;
    }

    public void setSotrang(int sotrang) {
        this.sotrang = sotrang;
    }

    public int getTheloai() {
        return theloai;
    }

    public void setTheloai(int theloai) {
        this.theloai = theloai;
    }

    public int getDaban() {
        return daban;
    }

    public void setDaban(int daban) {
        this.daban = daban;
    }
    
}
