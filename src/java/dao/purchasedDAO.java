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
import model.Purchased;
import model.Topic;

/**
 *
 * @author Quangkhuong3010
 */
public class purchasedDAO extends DBContext {

    public ArrayList<Purchased> getAll() {
        String sql = "SELECT [id]\n"
                + "      ,[user_id]\n"
                + "      ,[course_id]\n"
                + "      ,[purchased_date]\n"
                + "      ,[code]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[Purchased]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            ArrayList<Purchased> purchasedList = new ArrayList<>();
            while (rs.next()) {
                purchasedList.add(new Purchased(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            return purchasedList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Purchased> getAllOf(int user_id) {
        String sql = "SELECT [id]\n"
                + "      ,[user_id]\n"
                + "      ,[course_id]\n"
                + "      ,[purchased_date]\n"
                + "      ,[code]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[Purchased]\n"
                + "  WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Purchased> purchasedList = new ArrayList<>();
            while (rs.next()) {
                purchasedList.add(new Purchased(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            return purchasedList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Purchased getPurchased(int user_id, int course_id) {
        String sql = "SELECT [id]\n"
                + "      ,[user_id]\n"
                + "      ,[course_id]\n"
                + "      ,[purchased_date]\n"
                + "      ,[code]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[Purchased]\n"
                + "  WHERE user_id=? AND course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            st.setInt(2, course_id);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return new Purchased(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6));
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addPurchased(int user_id, int course_id, String code) {
        try {
            String sql = "INSERT INTO [dbo].[Purchased]\n"
                    + "           ([user_id]\n"
                    + "           ,[course_id]\n"
                    + "           ,[code])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            st.setInt(2, course_id);
            st.setString(3, code);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void markAsDone(int user_id, int course_id, String status) {
        try {
            String sql = "UPDATE [dbo].[Purchased]\n"
                    + "   SET [status] = ?\n"
                    + " WHERE [user_id]=? and [course_id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, user_id);
            st.setInt(3, course_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
