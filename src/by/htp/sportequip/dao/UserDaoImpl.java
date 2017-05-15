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
		try {
			Class.forName(driverName);
			Connection conn = DriverManager.getConnection(dbUrl, dbUser,dbPass);
			PreparedStatement ps = conn.prepareStatement(SQL_STATEMENT_SELECT_USER);
			ps.setString(1, login);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				String log = rs.getString(2);
				String pas = rs.getString(3);
				boolean role = rs.getBoolean(5);
				
				user = new User();
				user.setLogin(log);
				user.setPassword(pas);
				user.setRole(role);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return user;
	}
	
}
