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
import model.Purchased;

/**
 *
 * @author Quangkhuong3010
 */
public class organizationDAO extends DBContext {

    public String getNameOrganization(int manager_id) {
        String sql = "SELECT [name]\n"
                + "  FROM [dbo].[Organization]\n"
                + "  WHERE [manager_id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, manager_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addOrganiztion(String name, int manager_id) {
        try {
            String sql = "IINSERT INTO [dbo].[Organization]\n"
                    + "           ([name]\n"
                    + "           ,[manager_id])\n"
                    + "     VALUES\n"
                    + "           (?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, manager_id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
