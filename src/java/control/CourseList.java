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
import java.util.ArrayList;
import model.Category;
import model.Course;

/**
 *
 * @author Admin
 */
@WebServlet(name="CourseList", urlPatterns={"/CourseList"})
public class CourseList extends HttpServlet {
   
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
            out.println("<title>Servlet Courses</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Courses at " + request.getContextPath () + "</h1>");
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
        String search = request.getParameter("search");
        if (search==null)
            search="";
        String mess=null;
        System.out.println(search);
        categoryDAO categoryDAO = new categoryDAO();
        courseDAO courseDAO= new courseDAO();   
        userDAO userDAO = new userDAO();
        feedbackDAO rateDAO = new feedbackDAO();
        ArrayList<Category> listCategory = categoryDAO.getAllCategory();
        ArrayList<Course> listCourse = courseDAO.getAllCourse(search, "[created_date]");
        if (listCourse.size()==0){
            mess = "Not found!";
        }else{
            for (Course course : listCourse) {
                course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
                course.setAssign_name(userDAO.findUserName(course.getAssign_by()));
                course.setRating(rateDAO.getAverageRateOf(course.getId()));
            }
        }
        
        request.setAttribute("mess", mess);
        request.setAttribute("categories", listCategory);
        request.setAttribute("courses", listCourse);
        request.getRequestDispatcher("courselist.jsp").forward(request, response);
    } 
    //a
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
