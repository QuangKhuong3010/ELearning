/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.topicDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import static java.lang.Integer.max;
import java.util.ArrayList;
import java.util.Enumeration;
import model.Topic;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CurriculumEdit", urlPatterns = {"/CurriculumEdit"})
public class CurriculumEdit extends HttpServlet {

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
            out.println("<title>Servlet CurriculumEdit</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CurriculumEdit at " + request.getContextPath() + "</h1>");
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
        Enumeration<String> parameterNames = request.getParameterNames();
        ArrayList<String[]> paramValuesList = new ArrayList<>();
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            String[] paramValues = request.getParameterValues(paramName);
            paramValuesList.add(paramValues);
        }
        int course_id = Integer.parseInt(request.getParameter("course_id"));

        topicDAO topicDAO = new topicDAO();
        ArrayList<Topic> listTopic = topicDAO.getAllTopicOnCourse(course_id);
        int last_size = listTopic.size();
        int new_size = paramValuesList.size();
        while (last_size > new_size) {
            topicDAO.deleteLast(course_id);
        }
        for (int i = 0; i < new_size; i++) {
            String[] paramValues = paramValuesList.get(i);
            for (String value : paramValues) {
                if ((i <= new_size)&&(!listTopic.isEmpty())) {
                    int id = listTopic.get(i).getId();
                    topicDAO.update(value, id);
                } else {
                    topicDAO.add(course_id, value);
                }
            }
        }
        response.sendRedirect("CourseManager");
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
