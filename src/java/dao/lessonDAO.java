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
import model.Lesson;

/**
 *
 * @author Admin
 */
public class lessonDAO extends DBContext {

    public ArrayList<Lesson> getLessonOnTopic(int topic_id) {
        String sql = "SELECT [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "	  ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
                + "      ,[pdf]\n"
                + "      ,[position]\n"
                + "  FROM [ELearning].[dbo].[Lesson]"
                + "  WHERE topic_id=? AND isDeleted=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Lesson> LessonList = new ArrayList<>();

            while (rs.next()) {
                LessonList.add(new Lesson(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9)));
            }
            return LessonList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getMaxPosition(int topic_id) {
        String sql = "SELECT TOP 1 [position]\n"
                + "  FROM [ELearning].[dbo].[Lesson]\n"
                + "  where topic_id = ?\n"
                + "  order by position desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public Lesson getFirstLessonOnTopic(int topic_id) {
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "	  ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
                + "      ,[pdf]\n"
                + "      ,[position]\n"
                + "  FROM [ELearning].[dbo].[Lesson]\n"
                + "  WHERE topic_id = ? AND isDeleted=0 ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Lesson(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Lesson getFirstLessonOnCourse(int course_id) {
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[course_id]\n"
                + "      ,[name]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [ELearning].[dbo].[Topic]"
                + "  WHERE course_id =? AND isDeleted=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return getFirstLessonOnTopic(rs.getInt(1));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Lesson getLesson(int lesson_id) {
        String sql = "SELECT [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "	  ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
                + "      ,[pdf]\n"
                + "      ,[position]\n"
                + "  FROM [ELearning].[dbo].[Lesson]\n"
                + "  WHERE [id]=? AND isDeleted=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lesson_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Lesson(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void add(int topic_id, String name, int position) {
        try {
            String sql = "INSERT INTO [dbo].[Lesson]\n"
                    + "           ([topic_id]\n"
                    + "           ,[name]\n"
                    + "           ,[isDeleted]\n"
                    + "           ,[position])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            st.setString(2, name);
            st.setInt(3, 0);
            st.setInt(4, position);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateName(String name, int id) {
        try {
            String sql = "UPDATE [dbo].[Lesson]\n"
                    + "     SET [name] = ?\n"
                    + "      WHERE [id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateInformation(int lesson_id, String url, String pdf, String description) {
        try {
            String sql = "UPDATE [dbo].[Lesson]\n"
                    + "   SET [url] = ?\n"
                    + "      ,[pdf] = ?\n"
                    + "      ,[description] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, url);
            st.setString(2, pdf);
            st.setString(3, description);
            st.setInt(4, lesson_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void delete(int lesson_id) {
        try {
            String sql = "UPDATE [dbo].[Lesson]\n"
                    + "   SET [isDeleted] = 1\n"
                    + "   WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lesson_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public Lesson getLessonByPosition(int topic_id, int position) {
        String sql = "SELECT [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "	  ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
                + "      ,[pdf]\n"
                + "      ,[position]\n"
                + "  FROM [ELearning].[dbo].[Lesson]"
                + "  WHERE topic_id=? AND position=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            st.setInt(2, position);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                return new Lesson(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
