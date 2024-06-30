/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import static java.lang.reflect.Array.get;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.Feedback;
import model.Level;
import model.Rating;

/**
 *
 * @author Quangkhuong3010
 */
public class levelDAO extends DBContext {

    public String getLevelName(int level_id) {
        String sql = "SELECT [name]\n"
                + "  FROM [dbo].[Level]\n"
                + "  WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, level_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Level> getAllLevel() {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [dbo].[Level]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ArrayList<Level> listLevel = new ArrayList<>();
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listLevel.add(new Level(rs.getInt(1), rs.getString(2)));
            }
            return listLevel;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
