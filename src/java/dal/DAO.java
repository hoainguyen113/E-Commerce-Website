/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author User
 */
public class DAO extends DBContext {

    public List<Product> getProductIP() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productID like 'A%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getProductSS() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productID like 'S%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getProductOP() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productID like 'O%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getProductXI() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productID like 'X%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getProductVI() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productID like 'V%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> searchByName(String txt) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where productName like '%" + txt + "%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
            return list;

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean check(String pid) {
        String sql = "select * from Product where productID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,pid);
            ResultSet rs = st.executeQuery();       
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
        }
        return false;
    }

    // hieu       
    public void insert(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([productID]\n"
                + "           ,[productName]\n"
                + "           ,[oldPrice]\n"
                + "           ,[newPrice]\n"
                + "           ,[image01]\n"
                + "           ,[image02]\n"
                + "           ,[image03]\n"
                + "           ,[image04]\n"
                + "           ,[available]\n"
                + "           ,[sold]\n"
                + "           ,[cid])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, p.getProductID());
            st.setString(2, p.getProductName());
            st.setDouble(3, 0.0);
            st.setDouble(4, p.getNewPrice());
            st.setString(5, "");
            st.setString(6, "");
            st.setString(7, "");
            st.setString(8, "");
            st.setInt(9, p.getAvailable());
            st.setInt(10, 0);
            st.setInt(11, p.getCid());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Product getProductByProductID(String productID) {
        String sql = "  select * from Product where productID = '"+productID+"'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11));          
                return p;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void delete(String productID) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE productID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, productID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Product p) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET \n"
                + "      [productName] = ?\n"
                + "      ,[newPrice] = ?\n"
                + "      ,[available] = ?\n"
                + " WHERE productID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, p.getProductName());
            st.setDouble(2, p.getNewPrice());
            st.setInt(3, p.getAvailable());
            st.setString(4, p.getProductID());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
}
