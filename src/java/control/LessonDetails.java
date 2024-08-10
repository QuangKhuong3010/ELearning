/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.courseDAO;
import dao.feedbackDAO;
import dao.lessonCompletedDAO;
import dao.lessonDAO;
import dao.organizationDAO;
import dao.topicDAO;
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
import model.Feedback;
import model.Lesson;
import model.Rating;
import model.Topic;
import model.User;
import model.Curriculum;
import model.LessonCompleted;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LessonDetails", urlPatterns = {"/LessonDetails"})
public class LessonDetails extends HttpServlet {

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
            out.println("<title>Servlet Lesson</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Lesson at " + request.getContextPath() + "</h1>");
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
        
        topicDAO topicDAO = new topicDAO();
        lessonDAO lessonDAO = new lessonDAO();
        userDAO userDAO = new userDAO();
        courseDAO courseDAO = new courseDAO();
        organizationDAO organizationDAO = new organizationDAO();
        feedbackDAO feedbackDAO = new feedbackDAO();
        lessonCompletedDAO lessonCompletedDAO = new lessonCompletedDAO();

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        User user = (User) session.getAttribute("account");
        int course_id = Integer.parseInt(request.getParameter("course_id"));
        String lesson_id_raw = request.getParameter("lesson_id");
        if (lesson_id_raw==""){
            request.setAttribute("course_id", course_id);
            request.getRequestDispatcher("nolesson.jsp").forward(request, response);
            return;
        }
        int lesson_id = Integer.parseInt(lesson_id_raw);
        Lesson lesson = lessonDAO.getLesson(lesson_id);
        Course course = courseDAO.getCourse(course_id);
        User manager = userDAO.getUser(course.getManaged_by());
        manager.setOrganization_name(organizationDAO.getNameOrganization(manager.getUser_id()));

        ArrayList<Rating> rating = feedbackDAO.getRatingBar(course_id);
        ArrayList<Feedback> feedbackList = feedbackDAO.getFeedbackOnCousre(course_id);
        ArrayList<Topic> topicOnCourse = topicDAO.getAllTopicOnCourse(course_id);
        ArrayList<Curriculum> curriculum = new ArrayList<>();

        course.setRating(feedbackDAO.getAverageRateOf(course_id));
        course.setRatingNear((int) Math.round(course.getRating()));
        course.setRating(feedbackDAO.getAverageRateOf(course_id));
        course.setNumberRating(feedbackDAO.getFeedbackOnCousre(course_id).size());
        for (Topic topic : topicOnCourse) {
            ArrayList<Lesson> lessonOnTopic = lessonDAO.getLessonOnTopic(topic.getId());
            curriculum.add(new Curriculum(topic, lessonOnTopic));
        }
        for (Curriculum c : curriculum) {
            for (Lesson l : c.getLessons()) {
                if (lessonCompletedDAO.getLessonCompleted(user.getUser_id(), l.getId()) != null) {
                    l.setStatus("done");
                }
            }
        }

        request.setAttribute("curriculum", curriculum);
        request.setAttribute("feedback", feedbackList);
        request.setAttribute("rating", rating);
        request.setAttribute("manager", manager);
        request.setAttribute("lesson", lesson);
        request.setAttribute("course", course);
        request.getRequestDispatcher("lessondetails.jsp").forward(request, response);
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
