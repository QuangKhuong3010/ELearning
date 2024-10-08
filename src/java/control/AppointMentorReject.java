/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.appointMentorDAO;
import dao.organizationDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import util.Email;

/**
 *
 * @author Admin
 */
@WebServlet(name="AppointMentorReject", urlPatterns={"/AppointMentorReject"})
public class AppointMentorReject extends HttpServlet {
   
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AppointMentorDelete</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AppointMentorDelete at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        appointMentorDAO appointMentorDAO = new appointMentorDAO();
        organizationDAO organizationDAO = new organizationDAO();
        userDAO userDAO = new userDAO();
        int id = Integer.parseInt(request.getParameter("id"));
        User user = appointMentorDAO.getAppointbyId(id);
        user.setOrganization_name(organizationDAO.getNameOrganization(user.getAppoint_by()));
        user.setAppoint_name(userDAO.findUserName(user.getAppoint_by()));
        request.setAttribute("user", user);
        request.getRequestDispatcher("appointmentorreply.jsp").forward(request, response);
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
        
        int id = Integer.parseInt(request.getParameter("id"));
        String email = request.getParameter("name");
        appointMentorDAO appointMentorDAO = new appointMentorDAO();
        Email Email = new Email();     
        
        String reason = request.getParameter("description");
        Email.sendReason(email, reason);
        
        appointMentorDAO.update(id, "Reject");
        response.sendRedirect("AppointMentorConfirm");
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
