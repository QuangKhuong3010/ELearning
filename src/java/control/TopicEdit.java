/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.lessonDAO;
import dao.topicDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Lesson;
import model.Topic;

/**
 *
 * @author Admin
 */
@WebServlet(name = "TopicEdit", urlPatterns = {"/TopicEdit"})
public class TopicEdit extends HttpServlet {

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
            out.println("<title>Servlet TopicEdit</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TopicEdit at " + request.getContextPath() + "</h1>");
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
        int topic_id = Integer.parseInt(request.getParameter("id"));
        
        topicDAO topicDAO = new topicDAO();
        lessonDAO lessonDAO = new lessonDAO();
        
        
        Topic topic = topicDAO.getTopic(topic_id);
        ArrayList<Lesson> listLesson = lessonDAO.getLessonOnTopic(topic_id);

        request.setAttribute("lesson", listLesson);
        request.setAttribute("topic", topic);
        request.getRequestDispatcher("topicedit.jsp").forward(request, response);
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
        String[] oldTLessonsId = request.getParameterValues("lesson_id");
        String[] newLessons = request.getParameterValues("lesson_add");
        int topic_id = Integer.parseInt(request.getParameter("topic_id"));
        
        lessonDAO lessonDAO = new lessonDAO();
        
        ArrayList<Lesson> deleted = new ArrayList<>();
        ArrayList<Lesson> listLesson = lessonDAO.getLessonOnTopic(topic_id);
        
        
        for (Lesson lesson : listLesson) {
            boolean remain = false;
            for (String lessonId : oldTLessonsId) {
                if (lesson.getId() == Integer.parseInt(lessonId)) {
                    remain = true;
                }
            }
            if (remain == false) {
                deleted.add(lesson);
            }
        }

        for (Lesson delete : deleted) {
            listLesson.remove(delete);
            lessonDAO.delete(delete.getId());
        }

        for (Lesson lesson : listLesson) {
            lessonDAO.updateName(request.getParameter("lesson_" + lesson.getId()), lesson.getId());
        }

        if (newLessons != null) {
            for (String string : newLessons) {
                lessonDAO.add(topic_id, string);
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
