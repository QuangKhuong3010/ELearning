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
import model.Course;

/**
 *
 * @author Quangkhuong3010
 */
public class courseDAO extends DBContext {

 

    public ArrayList<Course> getAllCourse(String search, String orderBy) {
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
                + "      ,[isActive]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE 1=1 ";
        if (!search.equals("")) {
            sql += "AND [name] LIKE '%" + search + "%' \n ";
        }
        sql += " order by " + orderBy + " desc";
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
                        rs.getString(10),
                        rs.getInt(11)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public ArrayList<Course> getAllCourseByCid(String search, int cid) {
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
                + "      ,[isActive]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE 1=1 ";
        if (!search.equals("")) {
            sql += "AND [name] LIKE '%" + search + "%' \n ";
        }
        if(cid != 0)
        sql += "category_id = " + cid ;
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
                        rs.getString(10),
                        rs.getInt(11)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public ArrayList<Course> getListCourseByCids(String search, int [] cid) {
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
                + "      ,[isActive]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE 1=1 ";
        if (!search.equals("")) {
            sql += "AND [name] LIKE '%" + search + "%' \n ";
        }
       if (cid != null && cid[0] != 0) {
            sql += " and category_id in(";
            for (int i = 0; i < cid.length; i++) {
                sql += cid[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
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
                        rs.getString(10),
                        rs.getInt(11)));
            }
            return CourseList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList<Course> getCourseManagedBy(int managed_by) {
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
                + "      ,[isActive]\n"
                + "  FROM [dbo].[Course]"
                + "  WHERE managed_by=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList<Course> listCourse = new ArrayList<>();
            st.setInt(1, managed_by);
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
                        rs.getString(10),
                        rs.getInt(11)));
            }
            return listCourse;
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
                + "      ,[isActive]\n"
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
                        rs.getString(10),
                        rs.getInt(11)));
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
                + "      ,[isActive]\n"
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
                        rs.getString(10), 
                        rs.getInt(11));
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
                    + "           ,[isActive])"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, managed_by);
            st.setInt(2, user_id);
            st.setString(3, name);
            st.setFloat(4, price);
            st.setInt(5, level);
            st.setInt(6, category);
            st.setString(7, backgroup);
            st.setString(8, description);
            st.setInt(9, 0);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateCourse(int category, int level, String background, String description, float price, int course_id,String title) {
        try {
            String sql = "UPDATE [dbo].[Course]\n"
                    + "   SET [price] = ?\n"
                    + "      ,[level_id] = ?\n"
                    + "      ,[category_id] = ?\n"
                    + "      ,[avatar] = ?\n"
                    + "      ,[description] = ?"
                    + "      ,[name] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setFloat(1, price);
            st.setInt(2, level);
            st.setInt(3, category);
            st.setString(4, background);
            st.setString(5, description);
            st.setString(6, title);
            st.setInt(7, course_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public void activeCourse(int course_id, int isActive) {
        try {
            String sql = "UPDATE [dbo].[Course]\n"
                    + "   SET [isActive] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, isActive);
            st.setInt(2, course_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
   
}
