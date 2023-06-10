/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.Account;

/**
 *
 * @author Hanami
 */
public class AccountDAO extends DBContextMySQL {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account getAccountByUsername(String username) {
        String query = "SELECT * FROM account WHERE username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String foundUsername = rs.getString("username");
                String password = rs.getString("password");
                int role = rs.getInt("role");
                return new Account(foundUsername, password, role);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean addNewAccount(String username,String password,int role) {
        String query = "INSERT INTO account (username, password, role) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, role);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
class te{
    public static void main(String[] args) {
        AccountDAO adao = new AccountDAO();
        System.out.println(adao.getAccountByUsername("admin1"));
    }
}
