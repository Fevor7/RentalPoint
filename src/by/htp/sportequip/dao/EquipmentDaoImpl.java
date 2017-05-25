package by.htp.sportequip.dao;

import static by.htp.sportequip.util.ConstantValue.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import by.htp.sportequip.entity.Equipment;

public class EquipmentDaoImpl implements EquipmentDao{

	@Override
	public List<Equipment> fetchAllEquip() {
		
		ResourceBundle rb = ResourceBundle.getBundle("config");
		String dbUrl = rb.getString("db.url");
		String dbUser = rb.getString("db.login");
		String dbPass = rb.getString("db.pas");
		String driverName = rb.getString("db.driver.name");
		List<Equipment> equipList = new ArrayList<Equipment>();
		Connection conn = null; 
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName(driverName);
     		conn = DriverManager.getConnection(dbUrl, dbUser,dbPass);
			 ps = conn.prepareStatement(SQL_STATEMENT_SELECT_EQUIP);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Long equipId = rs.getLong(1);
				String name = rs.getString(2);
				String title = rs.getString(3);
				Double price = rs.getDouble(4);
				String type = rs.getString(5);
				String url = rs.getString(6);
				Equipment equip = new Equipment (equipId, name, title, price, type,url);
				equipList.add(equip);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} 
		
		
//		List<Equipment> equipment = new ArrayList<Equipment>();
//		equipment.add(new Equipment("eq1",25));
//		equipment.add(new Equipment("eq2", 30));
//		equipment.add(new Equipment("eq3",35));
		return equipList;
	}

	@Override
	public List<Equipment> fetchTypeEquip(String typeEquip, String select) {
		ResourceBundle rb = ResourceBundle.getBundle("config");
		String dbUrl = rb.getString("db.url");
		String dbUser = rb.getString("db.login");
		String dbPass = rb.getString("db.pas");
		String driverName = rb.getString("db.driver.name");
		List<Equipment> equipList = new ArrayList<Equipment>();
		Connection conn = null; 
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName(driverName);
     		conn = DriverManager.getConnection(dbUrl, dbUser,dbPass);
			 ps = conn.prepareStatement(select);
			 ps.setString(1, typeEquip);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Long equipId = rs.getLong(1);
				String name = rs.getString(2);
				String title = rs.getString(3);
				Double price = rs.getDouble(4);
				String type = rs.getString(5);
				String url = rs.getString(6);
				Equipment equip = new Equipment (equipId, name, title, price, type,url);
				equipList.add(equip);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} 
		
		
//		List<Equipment> equipment = new ArrayList<Equipment>();
//		equipment.add(new Equipment("eq1",25));
//		equipment.add(new Equipment("eq2", 30));
//		equipment.add(new Equipment("eq3",35));
		return equipList;
	}

}
