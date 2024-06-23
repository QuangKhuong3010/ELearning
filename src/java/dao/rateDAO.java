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
public class rateDAO extends DBContext {

    public ArrayList<Feedback> getRateOf(int cousre_id) {
        String sql = "";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cousre_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Feedback> Rate = new ArrayList<>();

            while (rs.next()) {
                Rate.add(new Feedback(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
            return Rate;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

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
            if (index==0)
                return 5.0;
            return total / index;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 5.0;
    }
}
