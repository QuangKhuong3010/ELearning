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
        String[] oldTopicsId = request.getParameterValues("topic_id");
        String[] newTopic = request.getParameterValues("topic_add");
        int course_id = Integer.parseInt(request.getParameter("course_id"));
        topicDAO topicDAO = new topicDAO();
        ArrayList<Topic> listTopic = topicDAO.getAllTopicOnCourse(course_id);
        ArrayList<Topic> deleted = new ArrayList<>();
        
        for (Topic topic : listTopic) {
            boolean remain = false;
            for (String topicId : oldTopicsId) {
                if (topic.getId() == Integer.parseInt(topicId)) {
                    remain = true;
                }
            }
            if (remain == false) {
                deleted.add(topic);
            }
        }

        for (Topic delete : deleted) {
            listTopic.remove(delete);
            topicDAO.delete(delete.getId());
        }

        for (Topic topic : listTopic) {
            topicDAO.update(request.getParameter("topic_" + topic.getId()), topic.getId());
        }

        if (newTopic != null) {
            for (String string : newTopic) {
                topicDAO.add(course_id, string);
            }
        }

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
