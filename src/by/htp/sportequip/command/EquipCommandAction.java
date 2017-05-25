package by.htp.sportequip.command;

import static by.htp.sportequip.util.ConstantValue.*;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import by.htp.sportequip.entity.Equipment;
import by.htp.sportequip.service.EquipmentService;
import by.htp.sportequip.service.EquipmentServiceImpl;

public class EquipCommandAction implements CommandAction{
	
	private EquipmentService equipService;
	
	public EquipCommandAction(){
		equipService = new EquipmentServiceImpl();
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String page = PAGE_USER_MAIN;
		List<Equipment> equipment = null;
		String typeEquip = request.getParameter(REQUEST_PARAM_EQUIP_TYPE);
		String nameEquip = request.getParameter(REQUEST_PARAM_EQUIP_NAME);
		String filter = request.getParameter(REQUEST_PARAM_EQUIP_FILTER);
			if(("all").equals(typeEquip)) {
				equipment = equipService.list();
			} else {
				equipment = equipService.listType(typeEquip, nameEquip);
			}
			if(("yes").equals(filter)) {
				String filterPrMin = request.getParameter(REQUEST_PARAM_EQUIP_FILTER_MIN);
				String filterPrMax = request.getParameter(REQUEST_PARAM_EQUIP_FILTER_MAX);
				equipment =equipService.filterPr(filterPrMin, filterPrMax,equipment);
			}
		request.setAttribute(REQUEST_PARAM_LIST_EQ, equipment);
		return page;
	}
	
}