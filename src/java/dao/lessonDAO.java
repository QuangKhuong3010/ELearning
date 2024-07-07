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
import model.Feedback;
import model.Lesson;
import model.Topic;

/**
 *
 * @author Admin
 */
public class lessonDAO extends DBContext {

    public ArrayList<Lesson> getLessonOnTopic(int topic_id) {
        String sql = "SELECT TOP (1000) [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "      ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
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
                        rs.getInt(7)));
            }
            return LessonList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Lesson getFirstLessonOnTopic(int topic_id) {
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "      ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
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
                        rs.getInt(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Lesson getFirstLessonOnCourse(int course_id) {
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "      ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [ELearning].[dbo].[Lesson]\n"
                + "  WHERE topic_id = ? AND isDeleted=0";
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
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "      ,[url]\n"
                + "      ,[description]\n"
                + "      ,[isDeleted]\n"
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
                        rs.getInt(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void add(int topic_id, String name) {
        try {
            String sql = "INSERT INTO [dbo].[Lesson]\n"
                    + "           ([topic_id]\n"
                    + "           ,[name]\n"
                    + "           ,[isDeleted])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            st.setString(2, name);
            st.setInt(3, 0);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateName(String name, int id) {
        try {
            String sql = "UPDATE [dbo].[Lesson]\n"
                    + "   SET [name] = ?\n"
                    + "      WHERE [id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateInformation(int lesson_id, String url, String description) {
        try {
            String sql = "UPDATE [dbo].[Lesson]\n"
                    + "   SET [url] = ?\n"
                    + "      ,[description] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, url);
            st.setString(2, description);
            st.setInt(3, lesson_id);
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

}
