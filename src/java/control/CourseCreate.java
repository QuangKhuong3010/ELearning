/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.categoryDAO;
import dao.courseDAO;
import dao.levelDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Category;
import model.Level;
import model.User;
import util.uploadCloudinry;

/**
 *
 * @author Quangkhuong3010
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1 MB
        maxFileSize = 1024 * 1024 * 5, // 5 MB
        maxRequestSize = 1024 * 1024 * 10 // 10 MB
)
@WebServlet(name="CreateCourse", urlPatterns={"/CreateCourse"})

public class CourseCreate extends HttpServlet {
   
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
            out.println("<title>Servlet CreateCourse</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateCourse at " + request.getContextPath () + "</h1>");
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
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        categoryDAO categoryDAO = new categoryDAO();
        userDAO userDAO = new userDAO();
        levelDAO levelDAO = new levelDAO();
        ArrayList<Category> listCategory = categoryDAO.getAllCategory();
        ArrayList<User> listManager = userDAO.getAllOfRole(2);
        ArrayList<Level> listLevel = levelDAO.getAllLevel();
        request.setAttribute("level", listLevel);
        request.setAttribute("manager", listManager);
        request.setAttribute("category", listCategory);
        request.getRequestDispatcher("coursecreate.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        userDAO userDAO = new userDAO();
        User user_system = (User) session.getAttribute("account");
        User user = userDAO.getUser(user_system.getUser_id());
        courseDAO courseDAO = new courseDAO();
        
        String name = request.getParameter("name");
        int category = Integer.parseInt(request.getParameter("category"));
        int managed_by =Integer.parseInt( request.getParameter("managed_by"));
        int level =Integer.parseInt( request.getParameter("level"));
        float price = Float.parseFloat(request.getParameter("price"));
        String description = request.getParameter("description");
        uploadCloudinry upload = new uploadCloudinry();
        String backgroup = upload.uploadCloudSingleImage(request, "backgroup");
        courseDAO.createCourse(name, category, managed_by, user.getUser_id(), level,backgroup, description, price);
        
        response.sendRedirect("Profile");
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
