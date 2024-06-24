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

    public ArrayList<Course> getAllCourse() {
        String sql = "SELECT [id]\n"
                + "      ,[instructor_id]\n"
                + "      ,[constructor_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[level_id]\n"
                + "      ,[time_duration]\n"
                + "      ,[category_id]\n"
                + "      ,[created_date]\n"
                + "      ,[avatar]\n"
                + "      ,[description]\n"
                + "  FROM [dbo].[Course]";
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
                        rs.getString((7)),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Course getCourse(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[instructor_id]\n"
                + "      ,[constructor_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[level_id]\n"
                + "      ,[time_duration]\n"
                + "      ,[category_id]\n"
                + "      ,[created_date]\n"
                + "      ,[avatar]\n"
                + "      ,[description]\n"
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
                        rs.getString((7)),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
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
}
