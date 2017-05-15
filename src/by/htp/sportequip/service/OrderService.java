package by.htp.sportequip.service;

import java.sql.Date;

import by.htp.sportequip.entity.Equipment;
import by.htp.sportequip.entity.Order;
import by.htp.sportequip.entity.User;

public interface OrderService {
	public Order makeOrder(User user, Equipment Equipment, Date start, Date end);
}
