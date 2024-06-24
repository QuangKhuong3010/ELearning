/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.Feedback;

/**
 *
 * @author Quangkhuong3010
 */
public class feedbackDAO extends DBContext {

    public double getAverageRateOf(int cousre_id) {
        int total = 0;
        int index = 0;
        String sql = "SELECT [rating]\n"
                + "  FROM [dbo].[Feedback]\n"
                + "  WHERE course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cousre_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                total += rs.getInt(1);
                index++;
            }
            if (index == 0) {
                return 5.0;
            }
            return total / index;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 5.0;
    }

    public ArrayList<Feedback> getFeedbackOnCousre(int course_id) {
        userDAO userDAO = new userDAO();
        String sql = "SELECT [id]\n"
                + "      ,[rating]\n"
                + "      ,[course_id]\n"
                + "      ,[created_by]\n"
                + "      ,[created_date]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "  FROM [dbo].[Feedback]\n"
                + "  WHERE [course_id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Feedback> feedbackList = new ArrayList<>();
            while (rs.next()) {
                feedbackList.add(new Feedback(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        userDAO.findUserName(rs.getInt(4)),
                        userDAO.getUser(rs.getInt(4)).getAvatar()));
            }
            return feedbackList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
