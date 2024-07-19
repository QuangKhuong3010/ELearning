/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String rem = request.getParameter("remember");

        Cookie ce = new Cookie("cemail", email);
        Cookie cp = new Cookie("cpass", pass);
        Cookie cr = new Cookie("crem", rem);
        if (rem != null) {
            ce.setMaxAge(7 * 60 * 60 * 24);
            cp.setMaxAge(7 * 60 * 60 * 24);
            cr.setMaxAge(7 * 60 * 60 * 24);
        } else {

            ce.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        response.addCookie(ce);
        response.addCookie(cp);
        response.addCookie(cr);
        userDAO userDAO = new userDAO();
        User user = userDAO.login(email, pass);
        if (user == null) {
            request.setAttribute("mess", "Wrong email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else if (userDAO.isActive(email)==0) {
            request.getRequestDispatcher("userban.jsp").forward(request, response);
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("account", user);
            response.sendRedirect("HomePage");
        }
    }

}
