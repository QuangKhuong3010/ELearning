/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Quangkhuong3010
 *
 */
@WebServlet(name = "OTPConfirm", urlPatterns = {"/OTPConfirm"})
public class OTPConfirm extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConfirmAccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfirmAccount at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("confirmotp.jsp").forward(request, response);
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
        String otp = request.getParameter("otp");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repass");
        Cookie[] cookies = request.getCookies();
        String email = null;
        String cotp = null;
        for (Cookie c : cookies) {
            if (c.getName().equals("cEmail")) {
                email = c.getValue();
                break;
            }
        }
        for (Cookie c : cookies) {
            if (c.getName().equals("cotp")) {
                cotp = c.getValue();
                break;
            }
        }
        String mess;
        userDAO user = new userDAO();
        if (!otp.equals(cotp)) {
            mess = "The otp you entered is incorrect";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("confirmotp.jsp").forward(request, response);
        } else if (!pass.equals(repass)) {
            mess = "Password and Confirm password not match";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("confirmotp.jsp").forward(request, response);
        } else {
            user.updateNewPassword(user.findUserId(email), pass);
            response.sendRedirect("Login");
        }
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
