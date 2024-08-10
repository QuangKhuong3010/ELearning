/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.certificateDAO;
import dao.courseDAO;
import dao.lessonCompletedDAO;
import dao.lessonDAO;
import dao.purchasedDAO;
import dao.topicDAO;
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
import model.Lesson;
import model.LessonCompleted;
import model.Topic;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "MarkAsDone", urlPatterns = {"/MarkAsDone"})
public class MarkAsDone extends HttpServlet {

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
            out.println("<title>Servlet MarkAsDone</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MarkAsDone at " + request.getContextPath() + "</h1>");
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
        int lesson_id = Integer.parseInt(request.getParameter("lesson_id"));
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        User user = (User) session.getAttribute("account");
        Lesson lessonCurrent = new Lesson();
        lessonCompletedDAO lessonCompletedDAO = new lessonCompletedDAO();
        lessonDAO lessonDAO = new lessonDAO();
        topicDAO topicDAO = new topicDAO();
        courseDAO courseDAO = new courseDAO();
        purchasedDAO purchasedDAO = new purchasedDAO();
        certificateDAO certificateDAO = new certificateDAO();

        Lesson lesson = lessonDAO.getLesson(lesson_id);
        if (lessonCompletedDAO.getLessonCompleted(user.getUser_id(), lesson_id)==null)
            lessonCompletedDAO.add(user.getUser_id(), lesson_id);
        int Currentposition = lesson.getPosition();
        System.out.println(Currentposition);

        if (Currentposition < lessonDAO.getMaxPosition(lesson.getTopic_id())) {
            int position = Currentposition + 1;
            lessonCurrent = lessonDAO.getLessonByPosition(lesson.getTopic_id(), position);
            while (lessonCurrent.getIsDeleted() == 1) {
                position = position + 1;
                lessonCurrent = lessonDAO.getLessonByPosition(lesson.getTopic_id(), position);
            }
        } else {
            lessonCurrent = lessonDAO.getLessonByPosition(lesson.getTopic_id(), Currentposition);
        }

        Course course = courseDAO.getCourse(topicDAO.getTopic(lesson.getTopic_id()).getCourse_id());

        ArrayList<LessonCompleted> listCompleted = lessonCompletedDAO.getAllLessonCompleted(user.getUser_id());
        ArrayList<Lesson> lessonOnCourse = new ArrayList<>();
        for (Topic topic : topicDAO.getAllTopicOnCourse(course.getId())) {
            lessonOnCourse.addAll(lessonDAO.getLessonOnTopic(topic.getId()));
        }
        boolean status=true;
        for (Lesson lesson1 : lessonOnCourse) {
            boolean done = false;
            for (LessonCompleted lessonCompleted1 : listCompleted) {
                if (lesson1.getId() == lessonCompleted1.getLesson_id()) {
                    done = true;
                    break;
                }
            }
            if (done==false){
                status=false;
            }
        }
        
        if(status==true){
            purchasedDAO.markAsDone(user.getUser_id(), course.getId(), "Completed");
        }else{
            purchasedDAO.markAsDone(user.getUser_id(), course.getId(), "Active");
        }

        if ((purchasedDAO.getPurchased(user.getUser_id(), course.getId()).getStatus().equals("Completed"))) {
            if (certificateDAO.getCertificate(user.getUser_id(), course.getId()) == null) {
                certificateDAO.createCertificate(user.getUser_id(), course.getId());
            }
            response.sendRedirect("CourseDetails?id=" + course.getId());
        } else {
            response.sendRedirect("LessonDetails?course_id=" + topicDAO.getTopic(lessonDAO.getLesson(lesson_id).getTopic_id()).getCourse_id() + "&" + "lesson_id=" + lessonCurrent.getId());
        }
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
