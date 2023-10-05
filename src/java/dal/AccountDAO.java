/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext {

    public Account check(String username, String password) {
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [username]=? and [password]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void insert(Account c) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[email])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getUsername());
            st.setString(2, c.getPassword());
            st.setString(3, c.getEmail());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account getAccountByUser(String user) {
        String sql = "select * from Account where username = '" + user + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account c = new Account(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getAccountByUE(String user, String email) {
        String sql = "select * from Account where username = '" + user + "'" + " and email = '" + email + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account c = new Account(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public void update (String username, String pass){
        String sql = "update Account set password = '"+ pass + "' where username = '"+ username+"'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();          
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    
    
}
    

