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
import model.Course;
import model.Level;
import model.User;
import util.uploadCloudinry;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CourseUpdate", urlPatterns = {"/CourseEdit"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1 MB
        maxFileSize = 1024 * 1024 * 5, // 5 MB
        maxRequestSize = 1024 * 1024 * 10 // 10 MB
)
public class CourseEdit extends HttpServlet {

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
            out.println("<title>Servlet CourseUpdate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseUpdate at " + request.getContextPath() + "</h1>");
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
        userDAO userDAO = new userDAO();
        levelDAO levelDAO = new levelDAO();
        courseDAO courseDAO = new courseDAO();
        categoryDAO categoryDAO = new categoryDAO();
        int id = Integer.parseInt(request.getParameter("id"));
        Course course = courseDAO.getCourse(id);
        ArrayList<User> listManager = userDAO.getAllOfRole(2);
        ArrayList<Level> listLevel = levelDAO.getAllLevel();
        ArrayList<Category> listCategory = categoryDAO.getAllCategory();
        course.setManaged_name(userDAO.findUserName(course.getManaged_by()));
        request.setAttribute("category", listCategory);
        request.setAttribute("level", listLevel);
        request.setAttribute("manager", listManager);
        request.setAttribute("course", course);
        request.getRequestDispatcher("courseedit.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        courseDAO courseDAO = new courseDAO();

        int category = Integer.parseInt(request.getParameter("category"));
        int level = Integer.parseInt(request.getParameter("level"));
        float price = Float.parseFloat(request.getParameter("price"));
        String description = request.getParameter("description");
        int course_id = Integer.parseInt(request.getParameter("course_id"));
        uploadCloudinry upload = new uploadCloudinry();
        String background = upload.uploadCloudSingleImage(request, "backgroup")!=null?upload.uploadCloudSingleImage(request, "backgroup"):"";
        if (background.equals(""))
            background=courseDAO.getCourse(course_id).getAvatar();
        courseDAO.updateCourse(category, level, background, description, price, course_id);
        response.sendRedirect("CourseManager");
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
