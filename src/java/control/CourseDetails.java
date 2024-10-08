/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.categoryDAO;
import dao.certificateDAO;
import dao.courseDAO;
import dao.lessonDAO;
import dao.organizationDAO;
import dao.feedbackDAO;
import dao.levelDAO;
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
import model.Certificate;
import model.Topic;
import model.Course;
import model.Feedback;
import model.Lesson;
import model.Purchased;
import model.Rating;
import model.User;
import model.Curriculum;
import util.generate;

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
        HttpSession session = request.getSession(false);
        User user = null;
        if (session != null) {
            user = (User) session.getAttribute("account");
        }
        int course_id = Integer.parseInt(request.getParameter("id"));
        
        courseDAO courseDAO = new courseDAO();
        categoryDAO categoryDAO = new categoryDAO();
        feedbackDAO feedbackDAO = new feedbackDAO();
        userDAO userDAO = new userDAO();
        topicDAO topicDAO = new topicDAO();
        lessonDAO lessonDAO = new lessonDAO();
        organizationDAO organizationDAO = new organizationDAO();
        levelDAO levelDAO = new levelDAO();
        purchasedDAO purchasedDAO = new purchasedDAO();
        generate generate = new generate();
        certificateDAO certificateDAO = new certificateDAO();
        
        Course course = courseDAO.getCourse(course_id);
        User mentor = userDAO.getUser(course.getAssign_by());
        User manager = userDAO.getUser(course.getManaged_by());
        ArrayList<Topic> topicOnCourse = topicDAO.getAllTopicOnCourse(course_id);
        ArrayList<Feedback> feedbackList = feedbackDAO.getFeedbackOnCousre(course_id);
        ArrayList<Rating> rating = feedbackDAO.getRatingBar(course_id);
        ArrayList<Curriculum> curriculum = new ArrayList<>();
        Lesson firstLesson = lessonDAO.getFirstLessonOnCourse(course_id);
        
        course.setLevel_name(levelDAO.getLevelName(course.getLevel_id()));
        course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
        course.setNumberRating(feedbackDAO.getFeedbackOnCousre(course_id).size());
        course.setRating(feedbackDAO.getAverageRateOf(course_id));
        course.setStudentOnCourse(userDAO.StudentOnCourse(course_id));
        manager.setOrganization_name(organizationDAO.getNameOrganization(manager.getUser_id()));
        course.setRatingNear((int) Math.round(course.getRating()));
        String code = generate.generateCode(purchasedDAO.getAll().size() + 1);
        Purchased purchased = null;
        Certificate certificate = null;
        if (user!=null){
            purchased = purchasedDAO.getPurchased(user.getUser_id(), course_id);
            certificate = certificateDAO.getCertificate(user.getUser_id(), course_id);
        }
        int sizeLesson = 0;
        for (Topic topic : topicOnCourse) {
            ArrayList<Lesson> lessonOnTopic = lessonDAO.getLessonOnTopic(topic.getId());
            sizeLesson+=lessonOnTopic.size();
            curriculum.add(new Curriculum(topic, lessonOnTopic));
        }
        
        request.setAttribute("firstLesson", firstLesson);
        request.setAttribute("certificate", certificate);
        request.setAttribute("sizeLesson", sizeLesson);
        request.setAttribute("curriculum", curriculum);
        request.setAttribute("purchased", purchased);
        request.setAttribute("code", code);
        request.setAttribute("rating", rating);
        request.setAttribute("feedback", feedbackList);
        request.setAttribute("mentor", mentor);
        request.setAttribute("manager", manager);
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
