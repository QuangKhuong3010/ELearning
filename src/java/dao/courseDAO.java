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
import model.Course;

/**
 *
 * @author Quangkhuong3010
 */
public class courseDAO extends DBContext {

    public ArrayList<Course> getAllCourse(String search) {
        String sql = "SELECT [id]\n"
                + "      ,[managed_by]\n"
                + "      ,[assign_by]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[level_id]\n"
                + "      ,[category_id]\n"
                + "      ,[avatar]\n"
                + "      ,[description]\n"
                + "      ,[created_date]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE 1=1";
        if (!search.equals("")) {
            sql += "AND [name] LIKE '%" + search + "%'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            ArrayList<Course> CourseList = new ArrayList<>();
            while (rs.next()) {
                CourseList.add(new Course(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Course> getCourseAssignBy(int assign_by) {
        String sql = "SELECT [id]\n"
                + "      ,[managed_by]\n"
                + "      ,[assign_by]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[level_id]\n"
                + "      ,[category_id]\n"
                + "      ,[avatar]\n"
                + "      ,[description]\n"
                + "      ,[created_date]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE assign_by=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList<Course> listCourse = new ArrayList<>();
            st.setInt(1, assign_by);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listCourse.add(new Course(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
            return listCourse;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Course getCourse(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[managed_by]\n"
                + "      ,[assign_by]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[level_id]\n"
                + "      ,[category_id]\n"
                + "      ,[avatar]\n"
                + "      ,[description]\n"
                + "      ,[created_date]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Course(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getQuantityCourseWithCategory(int category_id) {
        String sql = "SELECT COUNT(*) AS course_count\n"
                + "FROM [dbo].[Course]\n";
        if (category_id != 0) {
            sql += "WHERE [category_id] =" + category_id;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int Total = rs.getInt(1);
            return Total;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getQuantityCourseLearning(int user_id) {
        String sql = "SELECT COUNT(*) AS TotalCourses\n"
                + "FROM [dbo].[Purchased]\n"
                + "WHERE [user_id] = ?;";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            return rs.getInt(1);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public void createCourse(String name, int category, int managed_by, int user_id, int level, String backgroup, String description, float price) {
        try {
            String sql = "INSERT INTO [dbo].[Course]\n"
                    + "           ([managed_by]\n"
                    + "           ,[assign_by]\n"
                    + "           ,[name]\n"
                    + "           ,[price]\n"
                    + "           ,[level_id]\n"
                    + "           ,[category_id]\n"
                    + "           ,[avatar]\n"
                    + "           ,[description])"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, managed_by);
            st.setInt(2, user_id);
            st.setString(3, name);
            st.setFloat(4, price);
            st.setInt(5, level);
            st.setInt(6, category);
            st.setString(7, backgroup);
            st.setString(8, description);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateCourse(int category, int level, String background, String description, float price, int course_id) {
        try {
            String sql = "UPDATE [dbo].[Course]\n"
                    + "   SET [price] = ?\n"
                    + "      ,[level_id] = ?\n"
                    + "      ,[category_id] = ?\n"
                    + "      ,[avatar] = ?\n"
                    + "      ,[description] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setFloat(1, price);
            st.setInt(2, level);
            st.setInt(3, category);
            st.setString(4, background);
            st.setString(5, description);
            st.setInt(6, course_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
