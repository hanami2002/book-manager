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
public class OrderBook {
    private int oid;
    private String username;
    private int bid;
    private int soluong;
    private Date ngaymua;

    public OrderBook() {
    }

    public OrderBook(int oid, String username, int bid, int soluong, Date ngaymua) {
        this.oid = oid;
        this.username = username;
        this.bid = bid;
        this.soluong = soluong;
        this.ngaymua = ngaymua;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public Date getNgaymua() {
        return ngaymua;
    }

    public void setNgaymua(Date ngaymua) {
        this.ngaymua = ngaymua;
    }
    
    
    
}
