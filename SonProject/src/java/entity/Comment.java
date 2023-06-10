/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hanami
 */
public class Comment {
    private int cid;
    private String username;
    private int bid;
    private String nhanxet;
    private int danhgia;

    public Comment() {
    }

    public Comment(int cid, String username, int bid, String nhanxet, int danhgia) {
        this.cid = cid;
        this.username = username;
        this.bid = bid;
        this.nhanxet = nhanxet;
        this.danhgia = danhgia;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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

    public String getNhanxet() {
        return nhanxet;
    }

    public void setNhanxet(String nhanxet) {
        this.nhanxet = nhanxet;
    }

    public int getDanhgia() {
        return danhgia;
    }

    public void setDanhgia(int danhgia) {
        this.danhgia = danhgia;
    }
    
}
