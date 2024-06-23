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
import model.Topic;

/**
 *
 * @author Quangkhuong3010
 */
public class topicDAO extends DBContext {

    public ArrayList<Topic> getAllTopicOnCourse(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[course_id]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "  FROM [dbo].[Topic]\n"
                + "WHERE [course_id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            ArrayList<Topic> topicList = new ArrayList<>();
            while (rs.next()) {
                topicList.add(new Topic(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
            return topicList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
