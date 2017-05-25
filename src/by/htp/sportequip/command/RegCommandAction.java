package by.htp.sportequip.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegCommandAction implements CommandAction{
	public RegCommandAction() {
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String us;
		HttpSession session = request.getSession(true);
		if(session.getAttribute("user")!=null){
			us="user1";;
		} else {
			us="LogIN";
		}
		System.out.println(us);
		try {
			response.getWriter().print(us);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}