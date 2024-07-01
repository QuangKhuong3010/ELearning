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
import model.User;

public class appointMentorDAO extends DBContext {

    public ArrayList<User> getAll() {
        String sql = "SELECT [id]\n"
                + "      ,[email]\n"
                + "      ,[appoint_by]"
                + "      ,[status]"
                + "  FROM [ELearning].[dbo].[AppointMentor]\n"
                + "  WHERE status IS NULL";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList<User> listMentor = new ArrayList<>();
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listMentor.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
            return listMentor;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<User> getAllManagedBy(int managed_id) {
        String sql = "SELECT [id]\n"
                + "      ,[email]\n"
                + "      ,[appoint_by]\n"
                + "      ,[status]\n"
                + "  FROM [ELearning].[dbo].[AppointMentor]\n"
                + "  WHERE appoint_by=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList<User> listMentor = new ArrayList<>();
            st.setInt(1, managed_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listMentor.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));}
            return listMentor;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getAppointbyId(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[email]\n"
                + "      ,[appoint_by]\n"
                + "      ,[status],"
                + "  FROM [ELearning].[dbo].[AppointMentor]\n"
                + "  WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void update(int appoint_id, String status) {
        String sql = "UPDATE [dbo].[AppointMentor]\n"
                + "   SET [status] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, appoint_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(int appoint_id) {
        String sql = "DELETE FROM [dbo].[AppointMentor]\n"
                + "      WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, appoint_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
