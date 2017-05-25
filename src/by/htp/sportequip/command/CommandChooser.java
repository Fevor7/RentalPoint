package by.htp.sportequip.command;

import static by.htp.sportequip.util.ConstantValue.*;

public class CommandChooser {
	
	public static CommandAction chooserAction(String action){
		System.out.println(action);
		switch (action) {
		case ACTION_AUTHORIZE:
			System.out.println("Login action"+action);
			return new LoginCommandAction();
		case ACTION_MAKE_ORDER:
			System.out.println("createOrder action"+action);
			return new OrderCreateAction();
		case ACTION_ORDER:
			System.out.println("makeOrder"+action);
			return new MakeOrderAction();
		case ACTION_EQUIP:
			System.out.println("equip list"+action);
			return new EquipCommandAction();
		case ACTION_AUT:
			return new RegCommandAction();
		}
		return null;
	}
	
}
