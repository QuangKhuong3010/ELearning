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
        topicList=topicDAO.getAllTopicOnCourse(course_id);
        for (Topic topic : topicList) {
            result.addAll(getLessonOnTopic(topic.getId()));
        }
        return result;
    }

}
