/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.categoryDAO;
import dao.courseDAO;
import dao.feedbackDAO;
import dao.lessonCompletedDAO;
import dao.lessonDAO;
import dao.purchasedDAO;
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
import model.Curriculum;
import model.Lesson;
import model.Purchased;
import model.Topic;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CourseEnrolled", urlPatterns = {"/CourseEnrolled"})
public class CourseEnrolled extends HttpServlet {

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
            out.println("<title>Servlet CourseEnrolled</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseEnrolled at " + request.getContextPath() + "</h1>");
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
        purchasedDAO purchasedDAO = new purchasedDAO();
        userDAO userDAO = new userDAO();
        categoryDAO categoryDAO = new categoryDAO();
        feedbackDAO feedbackDAO = new feedbackDAO();
        lessonDAO lessonDAO = new lessonDAO();
        topicDAO topicDAO = new topicDAO();
        lessonCompletedDAO lessonCompletedDAO = new lessonCompletedDAO();

        ArrayList<Purchased> courseList = purchasedDAO.getAllOf(user.getUser_id());
        ArrayList<Course> courseListInfo = new ArrayList<>();
        for (Purchased purchased : courseList) {
            courseListInfo.add(courseDAO.getCourse(purchased.getCourse_id()));
        }
        for (Course course : courseListInfo) {
            course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
            course.setAssign_name(userDAO.findUserName(course.getAssign_by()));
            course.setAssign_avatar(userDAO.getUser(course.getAssign_by()).getAvatar());
            course.setRating(feedbackDAO.getAverageRateOf(course.getId()));
            int totalLesson = 0;
            int totalLessonCompletedList = 0;
            for (Topic topic : topicDAO.getAllTopicOnCourse(course.getId())) {
                ArrayList<Lesson> lessonOnTopic = lessonDAO.getLessonOnTopic(topic.getId());
                totalLesson += lessonOnTopic.size();
                for (Lesson lesson : lessonOnTopic) {
                    if (lessonCompletedDAO.getLessonCompleted(user.getUser_id(), lesson.getId()) != null) {
                        totalLessonCompletedList++;
                    }
                }
            }
            course.setProcess((double)totalLessonCompletedList / totalLesson*100);
            if (totalLesson==0){
                course.setProcess(0);
            }
            course.setNumberOfLesson(totalLesson);
            course.setStudentOnCourse(userDAO.StudentOnCourse(course.getId()));
        }

        request.setAttribute("coursesInfo", courseListInfo);

        request.getRequestDispatcher("courseenrolled.jsp").forward(request, response);
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
