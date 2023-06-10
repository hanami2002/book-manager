/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.OrderBook;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hanami
 */
public class OrderBookDAO extends DBContextMySQL {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public boolean addOrderBook(String username, int bid, int amount) {
        String query = "INSERT INTO order_book(username, bid, soluong) VALUES (?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setInt(2, bid);
            ps.setInt(3, amount);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public List<OrderBook> getOrderByUsername(String username) {
        List<OrderBook> orderBooks = new ArrayList<>();
        String query = "SELECT * FROM order_book WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                OrderBook orderBook = new OrderBook(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),rs.getDate(5));
                orderBooks.add(orderBook);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderBooks;
    }
}
