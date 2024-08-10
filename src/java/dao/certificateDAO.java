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
import model.Certificate;

/**
 *
 * @author Quangkhuong3010
 */
public class certificateDAO extends DBContext {

    public Certificate getCertificate(int user_id, int course_id) {
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[user_id]\n"
                    + "      ,[cousre_id]\n"
                    + "      ,[created_date]\n"
                    + "  FROM [ELearning].[dbo].[Certificate]\n"
                    + "  WHERE user_id=? and [cousre_id]=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            st.setInt(2, course_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
               return new Certificate(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
    
    public ArrayList<Certificate> getAllCertificate(int user_id) {
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[user_id]\n"
                    + "      ,[cousre_id]\n"
                    + "      ,[created_date]\n"
                    + "  FROM [ELearning].[dbo].[Certificate]\n"
                    + "  WHERE user_id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            ArrayList<Certificate> list = new ArrayList<>();
            while (rs.next()){
               list.add(new Certificate(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4)));
            }
            return list;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public void createCertificate(int user_id, int course_id) {
        try {
            String sql = "INSERT INTO [dbo].[Certificate]\n"
                    + "           ([user_id]\n"
                    + "           ,[cousre_id])"
                    + "     VALUES\n"
                    + "           (?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            st.setInt(2, course_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
