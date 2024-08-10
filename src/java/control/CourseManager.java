/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.categoryDAO;
import dao.courseDAO;
import dao.feedbackDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Course;
import model.User;
import util.uploadCloudinry;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CourseManager", urlPatterns = {"/CourseManager"})
public class CourseManager extends HttpServlet {

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
            out.println("<title>Servlet CourseManager</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseManager at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        User user = (User) session.getAttribute("account");

        courseDAO courseDAO = new courseDAO();
        categoryDAO categoryDAO = new categoryDAO();
        userDAO userDAO = new userDAO();
        feedbackDAO feedbackDAO = new feedbackDAO();
        ArrayList<Course> listCourse = new ArrayList<>();
        ArrayList<Course> courseManaged = new ArrayList<>();
        if (user.getRole_id() == 1) {
            listCourse = courseDAO.getAllCourse("", "[created_date]");
        }
        if (user.getRole_id() == 2) {
            courseManaged = courseDAO.getCourseManagedBy(user.getUser_id());
            listCourse = courseDAO.getCourseAssignBy(user.getUser_id());
        }
        if (user.getRole_id() == 3) {
            listCourse = courseDAO.getCourseAssignBy(user.getUser_id());
        }

        if (!listCourse.isEmpty()) {
            for (Course course : listCourse) {
                course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
                course.setAssign_name(userDAO.findUserName(course.getAssign_by()));
                course.setRating(feedbackDAO.getAverageRateOf(course.getId()));
            }
        }
        
        if (!courseManaged.isEmpty()) {
            for (Course course : courseManaged) {
                course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
                course.setAssign_name(userDAO.findUserName(course.getAssign_by()));
                course.setRating(feedbackDAO.getAverageRateOf(course.getId()));
            }
        }

        request.setAttribute("course", listCourse);
        request.setAttribute("courseManaged", courseManaged);
        request.getRequestDispatcher("coursemanager.jsp").forward(request, response);
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
