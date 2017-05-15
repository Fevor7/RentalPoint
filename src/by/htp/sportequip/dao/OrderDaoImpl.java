package by.htp.sportequip.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.ResourceBundle;

import by.htp.sportequip.entity.Order;
import by.htp.sportequip.entity.User;

import static by.htp.sportequip.util.ConstantValue.*;

public class OrderDaoImpl implements OrderDao{

	@Override
	public boolean createOrder(Order order) {
		ResourceBundle rb = ResourceBundle.getBundle("config");
		String dbUrl = rb.getString("db.url");
		String dbUser=rb.getString("db.login");
		String dbPass=rb.getString("db.pas");
		String driverName = rb.getString("db.driver.name");
		User user = null;
		try {
			Class.forName(driverName);
			Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
			PreparedStatement ps = conn.prepareStatement(SQL_STATEMENT_ORDER_CREATE);
				ps.setLong(1, order.getUser().getUserId());
				ps.setLong(2, order.getEquipment().getEquipId());
				ps.setDate(3, order.getDateStart());
				ps.setDate(4, order.getDateEnd());
			ps.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Order> fetchAll() {
		return null;
	}
	
}
