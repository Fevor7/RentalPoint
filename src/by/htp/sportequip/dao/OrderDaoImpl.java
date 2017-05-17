package by.htp.sportequip.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import by.htp.sportequip.entity.Equipment;
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
		
		ResourceBundle rb = ResourceBundle.getBundle("config");
		String dbUrl = rb.getString("db.url");
		String dbUser = rb.getString("db.login");
		String dbPass = rb.getString("db.pas");
		String driverName = rb.getString("db.driver.name");
		List<Order> listOrder = new ArrayList<Order>(); 
		Connection conn = null; 
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName(driverName);
     		conn = DriverManager.getConnection(dbUrl, dbUser,dbPass);
			 ps = conn.prepareStatement(SQL_STATEMENT_SELECT_ORDER);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Long orderId = rs.getLong(1);
				Long userId = rs.getLong(2);
				User user = new User(userId);
				Long equipId = rs.getLong(3);
				Equipment equip = new Equipment(equipId);
				Date dateStart = rs.getDate(4);
				Date dateEnd = rs.getDate(5);
				Order order = new Order (orderId, user, equip, dateStart, dateEnd);
				listOrder.add(order);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}  finally {
            try { conn.close(); } catch(SQLException se) { /*can't do anything */ }
            try { ps.close(); } catch(SQLException se) { /*can't do anything */ }
            try { rs.close(); } catch(SQLException se) { /*can't do anything */ }
        }
		return listOrder;
	}
	
}
