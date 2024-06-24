/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import model.User;

public class userDAO extends DBContext {

    public User login(String email, String pass) {
        String sql = "SELECT [id]\n"
                + "      ,[role_id]\n"
                + "      ,[email]\n"
                + "      ,[password]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [dbo].[User]\n"
                + "WHERE [email] = ? and [password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void SignUp(String firstName, String lastName, String email, String pass) {
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([role_id]\n"
                    + "           ,[email]\n"
                    + "           ,[password]\n"
                    + "           ,[first_name]\n"
                    + "           ,[last_name]\n"
                    + "           ,[isDeleted])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "4");
            st.setString(2, email);
            st.setString(3, pass);
            st.setString(4, firstName);
            st.setString(5, lastName);
            st.setString(6, "0");
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public boolean checkEmailExist(String email) {
        String sql = "SELECT [id]\n"
                + "  FROM [dbo].[User]\n"
                + "WHERE [email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void updateNewPassword(int id, String pass) {
        try {
            String sql = "UPDATE [dbo].[User]\n"
                    + "   SET [password] = ?\n"
                    + " WHERE [id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public User getUser(int id) {
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[role_id]\n"
                    + "      ,[email]\n"
                    + "      ,[password]\n"
                    + "      ,[registration_date]\n"
                    + "      ,[first_name]\n"
                    + "      ,[last_name]\n"
                    + "      ,[phone_number]\n"
                    + "      ,[avatar]\n"
                    + "      ,[description]\n"
                    + "      ,[isDeleted]\n"
                    + "  FROM [dbo].[User]\n"
                    + "  WHERE [id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public int findUserId(String email) {
        try {
            String sql = "SELECT [id]\n"
                    + "\n"
                    + "  FROM [dbo].[User]\n"
                    + "  where [email] = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return 0;
    }

    public String findUserName(int id) {
        try {
            String sql = "SELECT [first_name]\n"
                    + "      ,[last_name]\n"
                    + "  FROM [dbo].[User]\n"
                    + "  where [id] = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getString(1) + " " + rs.getString(2);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public int StudentOnCourse(int course_id) {
        try {
            String sql = "SELECT COUNT(DISTINCT [user_id])\n"
                    + "FROM [ELearning].[dbo].[Purchased]\n"
                    + "WHERE [course_id] = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return 0;
    }

}
