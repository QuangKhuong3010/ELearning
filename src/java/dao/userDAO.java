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
import java.util.ArrayList;
import model.User;

public class userDAO extends DBContext {

    public User login(String email, String pass) {
        String sql = "SELECT [id]\n"
                + "                          ,[role_id]\n"
                + "                          ,[email]\n"
                + "                          ,[password]\n"
                + "                          ,[registration_date]\n"
                + "                          ,[first_name]\n"
                + "                          ,[last_name]\n"
                + "                          ,[phone_number]\n"
                + "                          ,[avatar]\n"
                + "                          ,[backgroup]\n"
                + "                          ,[description]\n"
                + "                          ,[created_by_Google]\n"
                + "                      FROM [ELearning].[dbo].[User]\n"
                + "                     WHERE [email]=? and [password]=?";
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
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User loginWithGoogle(String email) {
        String sql = "SELECT [id]\n"
                + "      ,[role_id]\n"
                + "      ,[email]\n"
                + "      ,[created_by_Google]\n"
                + "  FROM [dbo].[User]\n"
                + "WHERE [email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4));
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
                    + "           ,[created_by_Google]"
                    + "           ,[avatar])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "4");
            st.setString(2, email);
            st.setString(3, pass);
            st.setString(4, firstName);
            st.setString(5, lastName);
            st.setString(6, "0");
            st.setString(7, "https://ss-images.saostar.vn/wp700/pc/1613810558698/Facebook-Avatar_3.png");
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void SignUpByGoogle(String email) {
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([role_id]\n"
                    + "           ,[email]\n"
                    + "           ,[created_by_Google]"
                    + "           ,[avatar])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "4");
            st.setString(2, email);
            st.setString(3, "1");
            st.setString(4, "https://ss-images.saostar.vn/wp700/pc/1613810558698/Facebook-Avatar_3.png");
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void createMentorAccount(User user, String pass) {
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([role_id]\n"
                    + "           ,[email]\n"
                    + "           ,[password]\n"
                    + "           ,[created_by_Google])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, 3);
            st.setString(2, user.getEmail());
            st.setString(3, pass);
            st.setInt(4, 0);
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

    public void updateProfile(int id, String first_name, String last_name, String avatar, String backgroup, String phone_number, String description) {
        try {
            String sql = "UPDATE [dbo].[User]\n"
                    + "   SET [first_name] = ?\n"
                    + "      ,[last_name] = ?\n"
                    + "      ,[avatar] = ?\n"
                    + "      ,[backgroup] = ?\n"
                    + "      ,[phone_number] = ?\n"
                    + "      ,[description] = ?\n"
                    + " WHERE [dbo].[User].[id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, first_name);
            st.setString(2, last_name);
            st.setString(3, avatar);
            st.setString(4, backgroup);
            st.setString(5, phone_number);
            st.setString(6, description);
            st.setInt(7, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public ArrayList<User> getAllOfRole(int role_id) {
        try {
            String sql = "SELECT [id]\n"
                    + "                          ,[role_id]\n"
                    + "                          ,[email]\n"
                    + "                          ,[password]\n"
                    + "                          ,[registration_date]\n"
                    + "                          ,[first_name]\n"
                    + "                          ,[last_name]\n"
                    + "                          ,[phone_number]\n"
                    + "                          ,[avatar]\n"
                    + "                          ,[backgroup]\n"
                    + "                          ,[description]\n"
                    + "                          ,[created_by_Google]\n"
                    + "                      FROM [ELearning].[dbo].[User]\n"
                    + "                     WHERE [dbo].[User].[role_id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList listUser = new ArrayList();
            st.setInt(1, role_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listUser.add(new User(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12)));
            }
            return listUser;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public ArrayList<User> getAll(String search) {
        try {
            String sql = "SELECT [id]\n"
                    + ",[role_id]\n"
                    + ",[email]\n"
                    + ",[registration_date]\n"
                    + ",[first_name]\n"
                    + ",[last_name]\n"
                    + ",[description]\n"
                    + "FROM [ELearning].[dbo].[User]\n"
                    + "WHERE 1=1";
            if (!search.equals("")) {
                sql += "AND [email] LIKE '%" + search + "%'";
            }
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList listUser = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listUser.add(new User(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
            return listUser;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
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
                    + "      ,[backgroup]\n"
                    + "      ,[description]\n"
                    + "      ,[created_by_Google]\n"
                    + "  FROM [ELearning].[dbo].[User]"
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
                        rs.getString(11),
                        rs.getInt(12));
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
