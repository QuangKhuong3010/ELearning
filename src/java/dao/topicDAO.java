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
                + "      ,[isDeleted]\n"
                + "  FROM [ELearning].[dbo].[Topic]"
                + "WHERE [course_id]=? AND isDeleted=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            ArrayList<Topic> topicList = new ArrayList<>();
            while (rs.next()) {
                topicList.add(new Topic(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4)));
            }
            return topicList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Topic getTopic(int topic_id) {
        String sql = "SELECT [id]\n"
                + "      ,[course_id]\n"
                + "      ,[name]\n"
                + "      ,[isDeleted]\n"
                + "  FROM [ELearning].[dbo].[Topic]"
                + "WHERE [id]=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Topic(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void add(int course_id, String name) {
        try {
            String sql = "INSERT INTO [dbo].[Topic]\n"
                    + "           ([course_id]\n"
                    + "           ,[name]\n"
                    + "           ,[isDeleted])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
            st.setString(2, name);
            st.setInt(3, 0);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void update(String name, int id) {
        try {
            String sql = "UPDATE [dbo].[Topic]\n"
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

    public void delete(int topic_id) {
        try {
            String sql = "UPDATE topic\n"
                    + "SET isDeleted = 1\n"
                    + "WHERE id = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, topic_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
