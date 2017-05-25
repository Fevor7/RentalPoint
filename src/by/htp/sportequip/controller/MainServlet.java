package by.htp.sportequip.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.htp.sportequip.command.CommandAction;
import by.htp.sportequip.command.CommandChooser;

public class MainServlet extends HttpServlet {

	private static final long serialVersionUID = 2318321201221871240L;

	public MainServlet() {
		super(); 
		System.out.println("konstruct");
    }
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("init");
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
		System.out.println("service");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("to Get");
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Post");
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String page = null;
		if(action!=null) {
			CommandAction currentAction = CommandChooser.chooserAction(action);
			page = currentAction.execute(request,response);
			
//			response.setContentType("application/xml");
//		    response.setHeader("Cache-Control", "no-cache");
//		    response.getWriter().write("dff");  
			if (page!=null) {
				RequestDispatcher disp = request.getRequestDispatcher(page);
				disp.forward(request, response );
			}
			
		}
	}
}
