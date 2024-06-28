/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import model.Feedback;
import model.Rating;

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
    
    public ArrayList<Rating> getRatingBar(int course_id) {
        String sql = "WITH RatingValues AS (\n"
                + "    SELECT 5 AS rating UNION ALL\n"
                + "    SELECT 4 UNION ALL\n"
                + "    SELECT 3 UNION ALL\n"
                + "    SELECT 2 UNION ALL\n"
                + "    SELECT 1\n"
                + ")\n"
                + "SELECT \n"
                + "    rv.rating,\n"
                + "    COUNT(f.rating) AS rating_count\n"
                + "FROM \n"
                + "    RatingValues rv\n"
                + "LEFT JOIN \n"
                + "    dbo.Feedback f\n"
                + "    ON rv.rating = f.rating AND f.course_id = ?\n"
                + "GROUP BY \n"
                + "    rv.rating\n"
                + "ORDER BY \n"
                + "    rv.rating DESC;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Rating> feedbackList = new ArrayList<>();
            while (rs.next()) {
                feedbackList.add(new Rating(rs.getInt(1),rs.getInt(2), rs.getInt(2)*100.0/getFeedbackOnCousre(course_id).size()));
            }
            return feedbackList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        feedbackDAO feedbackDAO = new feedbackDAO();
        ArrayList rating = feedbackDAO.getRatingBar(1);
        System.out.println(rating);
    }
}

