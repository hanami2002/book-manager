/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import entity.Book;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 *
 * @author Hanami
 */
public class BookDAO extends DBContextMySQL {
    PreparedStatement ps = null;
    ResultSet rs = null;
     public Book getBookById(int bookId) {
        String query = "SELECT * FROM book WHERE bid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, bookId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String tieude = rs.getString("tieude");
                String anhbia = rs.getString("anhbia");
                String tacgia = rs.getString("tacgia");
                String mota = rs.getString("mota");
                Date ngayphathanh = rs.getDate("ngayphathanh");
                int sotrang = rs.getInt("sotrang");
                int theloai = rs.getInt("theloai");
                int soluongdabang = rs.getInt("soluongdabang");
                return new Book(bookId, tieude, anhbia, tacgia, mota, ngayphathanh, sotrang, theloai, soluongdabang);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Get all books from the database
     *
     * @return a list of Book objects representing all books in the database
     */
    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        String query = "SELECT * FROM book";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bid = rs.getInt("bid");
                String tieude = rs.getString("tieude");
                String anhbia = rs.getString("anhbia");
                String tacgia = rs.getString("tacgia");
                String mota = rs.getString("mota");
                Date ngayphathanh = rs.getDate("ngayphathanh");
                int sotrang = rs.getInt("sotrang");
                int theloai = rs.getInt("theloai");
                int soluongdabang = rs.getInt("soluongdabang");
                Book book = new Book(bid, tieude, anhbia, tacgia, mota, ngayphathanh, sotrang, theloai, soluongdabang);
                books.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return books;
    }
    public void addBook(String tieude, String anhbia, String tacgia, String mota, String ngayphathanh, int sotrang, int theloai) {
    try {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date parsedDate = dateFormat.parse(ngayphathanh);
        java.sql.Date sqlNgayPhatHanh = new java.sql.Date(parsedDate.getTime());        
        PreparedStatement statement = connection.prepareStatement("INSERT INTO book (tieude, anhbia, tacgia, mota, ngayphathanh, sotrang, theloai) VALUES (?, ?, ?, ?, ?, ?, ?)");
        statement.setString(1, tieude);
        statement.setString(2, anhbia);
        statement.setString(3, tacgia);
        statement.setString(4, mota);
        statement.setDate(5, sqlNgayPhatHanh);
        statement.setInt(6, sotrang);
        statement.setInt(7, theloai);
         statement.executeUpdate();
        
    } catch ( Exception ex) {
        ex.printStackTrace();
    }
    }

    /**
     * Update an existing book in the database
     *
     * @param book the Book object to update
     * @return true if the update is successful, false otherwise
     */
    public boolean updateBook(Book book) {
        String query = "UPDATE book SET tieude = ?, anhbia = ?, tacgia = ?, mota = ?, ngayphathanh = ?, sotrang = ?, theloai = ? WHERE bid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, book.getTieude());
            ps.setString(2, book.getAnhbia());
            ps.setString(3, book.getTacgia());
            ps.setString(4, book.getMota());
            ps.setDate(5, (java.sql.Date) book.getPhathanh());
            ps.setInt(6, book.getSotrang());
            ps.setInt(7, book.getTheloai());
            ps.setInt(8, book.getBid());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Delete a book from the database
     *
     * @param bookId the ID of the book to delete
     * @return true if the deletion is successful, false otherwise
     */
    public boolean deleteBook(int bookId) {
        String query = "DELETE FROM book WHERE bid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, bookId);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    
}
