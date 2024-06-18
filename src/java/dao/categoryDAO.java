/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Category;
import model.User;

public class categoryDAO extends DBContext {

    public ArrayList<Category> getAllCategory() {
        String sql = "SELECT [category_id]\n"
                + "      ,[category_name]\n"
                + "  FROM [dbo].[Category]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            ArrayList<Category> CategoryList = new ArrayList<>();
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
}
