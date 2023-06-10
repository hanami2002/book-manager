/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BookDAO;
import entity.Book;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import utils.FolderUtils;

@MultipartConfig
public class AddBook extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        if (action.equals("addbook")) {
            String uploadDirectory = "C:\\Users\\FPTShop\\OneDrive\\Documents\\GitHub\\book-manager\\SonProject\\web\\img";
            FolderUtils folderUtils = new FolderUtils();
            folderUtils.checkAndCreateFolder(uploadDirectory);
            Part filePart = request.getPart("anhbia");
            String fileName = filePart.getSubmittedFileName();
            InputStream fileContent = filePart.getInputStream();
            Files.copy(fileContent, new File(uploadDirectory, fileName).toPath(), StandardCopyOption.REPLACE_EXISTING);
            String tieude = request.getParameter("tieude");
            String tacgia = request.getParameter("tacgia");
            String mota = request.getParameter("mota");
            String ngayphathanh = request.getParameter("ngayphathanh");
            String sotrang = request.getParameter("sotrang");
            String theloai = request.getParameter("theloai");
            BookDAO bdao = new BookDAO();
            bdao.addBook(tieude, "img/" + fileName, tacgia, mota, ngayphathanh, Integer.parseInt(sotrang), Integer.parseInt(theloai));

            response.sendRedirect("admin-home");
        }
        if (action.equals("editbook")) {
         String uploadDirectory = "C:\\Users\\FPTShop\\OneDrive\\Documents\\GitHub\\book-manager\\SonProject\\web\\img";
            FolderUtils folderUtils = new FolderUtils();
            folderUtils.checkAndCreateFolder(uploadDirectory);
            Part filePart = request.getPart("anhbia");
            String fileName = filePart.getSubmittedFileName();
            InputStream fileContent = filePart.getInputStream();
            Files.copy(fileContent, new File(uploadDirectory, fileName).toPath(), StandardCopyOption.REPLACE_EXISTING);
            String tieude = request.getParameter("tieude");
            String tacgia = request.getParameter("tacgia");
            String mota = request.getParameter("mota");
            String ngayphathanh = request.getParameter("ngayphathanh");
            String sotrang = request.getParameter("sotrang");
            String theloai = request.getParameter("theloai");
            String bid= request.getParameter("bid");
            BookDAO bdao = new BookDAO();
            bdao.updateBook(tieude, bid, tacgia, mota, ngayphathanh, Integer.parseInt(sotrang), Integer.parseInt(theloai), Integer.parseInt(bid));
            response.sendRedirect("admin-home");
        }

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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
