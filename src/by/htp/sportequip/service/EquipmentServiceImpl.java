package by.htp.sportequip.service;

import java.util.ArrayList;
import java.util.List;

import by.htp.sportequip.entity.Equipment;

public class EquipmentServiceImpl implements EquipmentService{

	@Override
	public List<Equipment> list() {
		List<Equipment> equipment = new ArrayList<Equipment>();
		equipment.add(new Equipment("eq1",25));
		equipment.add(new Equipment("eq2", 30));
		equipment.add(new Equipment("eq3",35));
		
		return equipment;
	}

}
