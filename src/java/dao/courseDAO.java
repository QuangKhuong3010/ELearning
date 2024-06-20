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
        String sql = "SELECT SELECT [course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[price]\n"
                + "      ,[discount]"
                + "      ,[level]"
                + "      ,[time_duration]"
                + "      ,[category_id]\n"
                + "      ,[created_date]\n"
                + "      ,[created_by_id]\n"
                + "      ,[constructer_id]\n"
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
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt((7)),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getString(12)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
