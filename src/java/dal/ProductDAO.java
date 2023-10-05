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
public class ProductDAO extends DBContext {

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

    public void update(String id, int quantity) {
        String sql = "update Product set available -= " + quantity + " where productID like '" + id + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
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

}
