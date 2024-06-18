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

public class DAO extends DBContext {

    public User login(String email, String pass) {
        String sql = "SELECT [user_id]\n"
                + "      ,[role_id]\n"
                + "      ,[email]\n"
                + "      ,[pass]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [dbo].[User]\n"
                + "WHERE [email] = ? and [pass] = ?";
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

    public boolean checkEmailExist(String email) {
        String sql = "SELECT [user_id]\n"
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

    public void SignUp(String firstName, String lastName, String email, String pass) {
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([role_id]\n"
                    + "           ,[email]\n"
                    + "           ,[password]\n"
                    + "           ,[fisrt_name]\n"
                    + "           ,[last_name]\n"
                    + "           ,[isDeleted])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?)";
            String date_created = LocalDate.now().toString();
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
}
