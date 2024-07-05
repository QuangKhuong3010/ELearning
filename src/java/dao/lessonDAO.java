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
                + "  FROM [ELearning].[dbo].[Lesson]"
                + "  WHERE topic_id=?";
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
                        rs.getString(6)));
            }
            return LessonList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Lesson> getLessonOnCourse(int course_id) {
        ArrayList<Lesson> result = new ArrayList<>();
        ArrayList<Topic> topicList = new ArrayList<>();
        topicDAO topicDAO = new topicDAO();
        topicList = topicDAO.getAllTopicOnCourse(course_id);
        for (Topic topic : topicList) {
            result.addAll(getLessonOnTopic(topic.getId()));
        }
        return result;
    }

    public Lesson getFirstLessonOnTopic(int topic_id) {
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[topic_id]\n"
                + "      ,[name]\n"
                + "      ,[last_updated_date]\n"
                + "      ,[url]\n"
                + "      ,[description]\n"
                + "  FROM [ELearning].[dbo].[Lesson]\n"
                + "  WHERE topic_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Lesson(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
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
                + "  FROM [ELearning].[dbo].[Topic]\n"
                + "  WHERE [course_id]=?";
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
                + "      ,[course_id]\n"
                + "      ,[name]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [ELearning].[dbo].[Topic]\n"
                + "  WHERE [id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lesson_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Lesson(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
