/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import entity.Account;
import dao.AccountDAO;
import jakarta.servlet.http.HttpSession;
/**
 *
 * @author Hanami
 */
public class LoginController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action= request.getParameter("action");
            AccountDAO adao= new AccountDAO();
            if(action.equals("login")){
                String username= request.getParameter("username");
                String password= request.getParameter("password");
                Account account= adao.getAccountByUsername(username);
                if(account==null|| !password.equals(account.getPassword())){
                    request.setAttribute("messageLogin", "sai ten tai khoan hoac mat khau");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                else{
                    HttpSession session= request.getSession();
                    session.setAttribute("account", account);
                    if(account.getRole()==1){
                      //  request.getRequestDispatcher("adminhome.jsp").forward(request, response);
                       response.sendRedirect("/admin-home");
                    }
                    if(account.getRole()==0){
                       // request.getRequestDispatcher("userhome.jsp").forward(request, response);
                        response.sendRedirect("/user-home");
                    }
                }
                
            }
            if(action.equals("register")){
                String registerUsername=request.getParameter("registerUsername");
                String registerPassword =request.getParameter("registerPassword");
                String confirmPassword=request.getParameter("confirmPassword");
                out.print(registerUsername+"\n"+registerPassword+"\n" + confirmPassword);
            }
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
