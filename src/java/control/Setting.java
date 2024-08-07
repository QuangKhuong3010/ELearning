/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.courseDAO;
import dao.purchasedDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import util.uploadCloudinry;

/**
 *
 * @author Quangkhuong3010
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1 MB
        maxFileSize = 1024 * 1024 * 5, // 5 MB
        maxRequestSize = 1024 * 1024 * 10 // 10 MB
)
@WebServlet(name = "Setting", urlPatterns = {"/Setting"})
public class Setting extends HttpServlet {

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
            out.println("<title>Servlet Setting</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Setting at " + request.getContextPath() + "</h1>");
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
        User user_system = (User) session.getAttribute("account");

        userDAO userDAO = new userDAO();
        courseDAO courseDAO = new courseDAO();
        purchasedDAO purchasedDAO = new purchasedDAO();
        User user = userDAO.getUser(user_system.getUser_id());
        user.setQuantityCourseLearning(purchasedDAO.getAllOf(user.getUser_id()).size());

        
        request.setAttribute("user", user);
        request.getRequestDispatcher("setting.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("Logout");
            return;
        }
        userDAO userDAO = new userDAO();
        User user_system = (User) session.getAttribute("account");
        User user = userDAO.getUser(user_system.getUser_id());
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String phone_number = request.getParameter("phone_number");
        String description = request.getParameter("description");
        uploadCloudinry upload = new uploadCloudinry();
        String avatar = upload.uploadCloudSingleImage(request, "avatar") != null ? upload.uploadCloudSingleImage(request, "avatar") : "";
        String backgroup = upload.uploadCloudSingleImage(request, "backgroup") != null ? upload.uploadCloudSingleImage(request, "backgroup") : "";
        if (avatar.equals("")) {
            avatar = user.getAvatar();
        }
        if (backgroup.equals("")) {
            backgroup = user.getBackgroup();
        }
        userDAO.updateProfile(user.getUser_id(), first_name, last_name, avatar, backgroup, phone_number, description);
        user = userDAO.getUser(user.getUser_id());
        request.setAttribute("user", user);
        request.getRequestDispatcher("setting.jsp").forward(request, response);

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
