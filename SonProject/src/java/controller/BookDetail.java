/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BookDAO;
import dao.CommentDAO;
import dao.OrderBookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import entity.Account;
import entity.Book;
import entity.Comment;
import jakarta.servlet.http.HttpSession;
import java.util.List;
/**
 *
 * @author toygu
 */
public class BookDetail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @return 
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected Account getAccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        return (Account)session.getAttribute("account");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bid = Integer.parseInt(request.getParameter("bid"));
        Book book = new BookDAO().getBookById(bid);
        List<Comment> comments = new CommentDAO().getCommentsByBid(bid);
        request.setAttribute("book", book);
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("bookdetail.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Account account = this.getAccount(request, response);
        int bid = Integer.parseInt(request.getParameter("bid"));
        String action = request.getParameter("action");
        switch(action){
            case "buy":
                int amount = Integer.parseInt(request.getParameter("amount"));
                new OrderBookDAO().addOrderBook(account.getUsername(), bid, amount);
                break;
            case "comment":
                String comment = request.getParameter("comment").trim();
                int rating = Integer.parseInt(request.getParameter("rating"));
                new CommentDAO().addComment(account.getUsername(), bid, comment, rating);
                break;
            default:
                break;
        }
        response.sendRedirect("./book-detail?bid="+bid);
    }

    /** </editor-fold> **/

}