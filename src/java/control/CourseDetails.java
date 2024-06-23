/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.categoryDAO;
import dao.courseDAO;
import dao.rateDAO;
import dao.topicDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Topic;
import model.Course;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "courseDetails", urlPatterns = {"/CourseDetails"})
public class CourseDetails extends HttpServlet {

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
            out.println("<title>Servlet courseDetails</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseDetails at " + request.getContextPath() + "</h1>");
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
        courseDAO courseDAO = new courseDAO();
        categoryDAO categoryDAO = new categoryDAO();
        rateDAO rateDAO = new rateDAO();
        userDAO userDAO = new userDAO();
        topicDAO topicDAO = new topicDAO();

        int id = Integer.parseInt(request.getParameter("id"));
        Course course = courseDAO.getCourse(id);
        User constructer = userDAO.getUser(course.getConstructer_id());
//        ArrayList<Topic> topicCourse = topicDAO.getAllTopicOnCourse(id);
//        System.out.println(topicCourse);

        course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
        course.setRating(rateDAO.getAverageRateOf(id));
//        course.setStudentOnCourse(userDAO.StudentOnCourse(id));

//        request.setAttribute("topic", topicCourse);
        request.setAttribute("constructer", constructer);
        request.setAttribute("course", course);
        request.getRequestDispatcher("coursedetails.jsp").forward(request, response);
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
