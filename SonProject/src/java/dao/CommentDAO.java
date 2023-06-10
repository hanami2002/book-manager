/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Comment;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hanami
 */
public class CommentDAO extends DBContextMySQL {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public boolean addComment(String username, int bid, String nhanxet, int danhgia) {
        String query = "INSERT INTO cmt(username, bid, nhanxet, danhgia) VALUES (?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setInt(2, bid);
            ps.setString(3, nhanxet);
            ps.setInt(4, danhgia);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Comment> getCommentsByBid(int bid) {
        List<Comment> commentList = new ArrayList<>();
        String query = "SELECT * FROM cmt WHERE bid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, bid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comment comment = new Comment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
                commentList.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return commentList;
    }
}
