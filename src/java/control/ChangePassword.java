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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

/*
 * @author HuynhPhan
 */
@WebServlet(name="ChangePassword", urlPatterns={"/ChangePassword"})
public class ChangePassword extends HttpServlet {
   
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String currentPass = request.getParameter("currentPass");
          String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String email = request.getParameter("email");
        userDAO userDao = new userDAO();
        String mess = "";
          if (!pass.equals(repass)) {
            mess = "Password and Confirm password not match";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("setting.jsp").forward(request, response);
        }else{
              User user = userDao.login(email, currentPass);
              System.out.println(user);
              if(user== null){
                   mess = "Current password incorrect!";
                   request.setAttribute("mess", mess);
                   request.getRequestDispatcher("setting.jsp").forward(request, response);
              }else{
                  userDao.changePassword(email, pass);
                  response.sendRedirect("Setting");
              }
          }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
