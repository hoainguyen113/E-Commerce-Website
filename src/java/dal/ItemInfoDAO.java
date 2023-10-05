/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Category;
import model.Product;

/**
 *
 * @author admin
 */
public class ItemInfoDAO extends DBContext {
    
    public Category getCategoryById(int id) {
        String sql = "SELECT * FROM [dbo].[Category] WHERE categoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category();
                c.setCategoryID(rs.getInt("categoryID"));
                c.setCategoryName(rs.getString("categoryName"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Product getProductById(String id) {
        String sql = "SELECT [productID]\n"
                + "      ,[productName]\n"
                + "      ,[oldPrice]\n"
                + "      ,[newPrice]\n"
                + "      ,[image01]\n"
                + "      ,[image02]\n"
                + "      ,[image03]\n"
                + "      ,[image04]\n"
                + "      ,[available]\n"
                + "      ,[sold]\n"
                + "      ,[cid]\n"
                + "  FROM [dbo].[Product]"
                + "  WHERE productID like '" + id + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product c = new Product();
                c.setProductID(rs.getString("productID"));
                c.setProductName(rs.getString("productName"));
                c.setOldPrice(rs.getDouble("oldPrice"));
                c.setNewPrice(rs.getDouble("newPrice"));
                c.setImage01(rs.getString("image01"));
                c.setImage02(rs.getString("image02"));
                c.setImage03(rs.getString("image03"));
                c.setImage04(rs.getString("image04"));
                c.setAvailable(rs.getInt("available"));
                c.setSold(rs.getInt("sold"));
                c.setCid(rs.getInt("cid"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
