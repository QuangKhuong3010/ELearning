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
import model.LessonCompleted;

/**
 *
 * @author Quangkhuong3010
 */
public class lessonCompletedDAO extends DBContext {

    public LessonCompleted getLessonCompleted(int user_id, int lesson_id) {
        String sql = "SELECT [id]\n"
                + "      ,[user_id]\n"
                + "      ,[lesson_id]\n"
                + "  FROM [dbo].[LessonCompleted]"
                + "     WHERE lesson_id=? and user_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lesson_id);
            st.setInt(2, user_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new LessonCompleted(rs.getInt(1),
                        rs.getInt(2), 
                        rs.getInt(3));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList<LessonCompleted> getAllLessonCompleted(int user_id) {
        String sql = "SELECT [id]\n"
                + "      ,[user_id]\n"
                + "      ,[lesson_id]\n"
                + "  FROM [dbo].[LessonCompleted]"
                + "     WHERE user_id=?";
        try {
            ArrayList<LessonCompleted> list = new ArrayList<>();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new LessonCompleted(rs.getInt(1),
                        rs.getInt(2), 
                        rs.getInt(3))) ;
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public double add(int userId, int lessonId) {
        String sql = "INSERT INTO [dbo].[LessonCompleted]\n"
                + "           ([user_id]\n"
                + "           ,[lesson_id])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            st.setInt(2, lessonId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 5.0;
    }
}
