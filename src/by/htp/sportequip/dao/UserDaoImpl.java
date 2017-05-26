package by.htp.sportequip.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import by.htp.sportequip.entity.User;

import static by.htp.sportequip.util.ConstantValue.*;

public class UserDaoImpl implements UserDao{
	
	@Override
	public User fetchByCredentials(String login, String password) {
		ResourceBundle rb = ResourceBundle.getBundle("config");
		String dbUrl = rb.getString("db.url");
		String dbUser = rb.getString("db.login");
		String dbPass = rb.getString("db.pas");
		String driverName = rb.getString("db.driver.name");
		User user = null;
		Connection conn = null; 
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbUrl, dbUser,dbPass);
			ps = conn.prepareStatement(SQL_STATEMENT_SELECT_USER);
			ps.setString(1, login);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				String log = rs.getString(2);
				String pas = rs.getString(3);
				String name = rs.getString(4);
				boolean role = rs.getBoolean(5);
				
				user = new User();
				user.setLogin(log);
				user.setPassword(pas);
				user.setRole(role);
				user.setName(name);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
            try { conn.close(); } catch(SQLException se) { se.printStackTrace();}
            try { ps.close(); } catch(SQLException se) {se.printStackTrace();}
            try { rs.close(); } catch(SQLException se) {se.printStackTrace();}
        }
		return user;
	}
	
}
