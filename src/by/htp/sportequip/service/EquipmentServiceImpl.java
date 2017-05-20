package by.htp.sportequip.service;

import java.util.List;

import by.htp.sportequip.dao.EquipmentDao;
import by.htp.sportequip.dao.EquipmentDaoImpl;
import by.htp.sportequip.entity.Equipment;

public class EquipmentServiceImpl implements EquipmentService{
	private EquipmentDao dao;
	
	public EquipmentServiceImpl(){
		dao = new EquipmentDaoImpl();
	}
	@Override
	public List<Equipment> list() {
		
		return dao.fetchAllEquip();
	}
	
}
