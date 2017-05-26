package by.htp.sportequip.command;

import static by.htp.sportequip.util.ConstantValue.*;

public class CommandChooser {
	
	public static CommandAction chooserAction(String action){
		System.out.println(action);
		switch (action) {
		case ACTION_AUTHORIZE:
			return new LoginCommandAction();
		case ACTION_MAKE_ORDER:
			return new OrderCreateAction();
		case ACTION_ORDER:
			return new MakeOrderAction();
		case ACTION_EQUIP:
			return new EquipCommandAction();
		case ACTION_HOMEPAGE:
			return new HomePageCommandAction();
		case ACTION_QUITSESSION:
			return new QuipCommandAction();	
		}
		return null;
	}
	
}
