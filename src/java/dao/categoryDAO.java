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
import model.Category;

public class categoryDAO extends DBContext {

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> CategoryList = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [ELearning].[dbo].[Category]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryList.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
            return CategoryList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public String getNameCategory(int id) {
        String sql = "SELECT [name]\n"
                + "  FROM [dbo].[Category]\n"
                + "  WHERE id= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next())
                return rs.getString(1);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] agrs) {
        categoryDAO categoryDAO = new categoryDAO();
        System.out.println(categoryDAO.getNameCategory(1));
    }
}
