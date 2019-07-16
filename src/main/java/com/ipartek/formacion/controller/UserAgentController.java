package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserAgentController
 */
@WebServlet("/UserAgentController")
public class UserAgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO mirar user-agent de la cabecera
		String browser = request.getHeader("user-agent");
		String nav1 = null;
		String nav2 = null;
		if(browser.contains("Chrome")) {
			nav1 = "Chrome";
			
		} else if(browser.contains("Firefox")){
			nav1 = "Firefox";
			
		} else if(browser.contains("Trident")){
			nav1 = "Internet Explorer";
		}
		
		if(browser.contains("Mobile")) {
			nav2 = "Movil";
			
		} else {
			nav2 = "No es movil";
		}
		request.setAttribute("navegador", nav1);
		request.setAttribute("movil", nav2);
		request.getRequestDispatcher("ejemplos/basico2.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProcess(request, response);
	}
	

	

}
