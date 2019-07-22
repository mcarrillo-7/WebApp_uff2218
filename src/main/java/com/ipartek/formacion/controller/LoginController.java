package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipartek.formacion.model.pojo.Alert;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String pass = request.getParameter("pass");
		
		if("admin".equals(usuario) && "admin".equals(pass)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("usuario", "Segismundo");
			request.setAttribute("mensaje", new Alert("success", "Welcome boy!!"));
			request.getRequestDispatcher("backoffice/index.jsp").forward(request, response);
		} else {
			request.setAttribute("mensaje", new Alert("danger", "Credenciales no correctas"));
			
			request.getRequestDispatcher("backoffice/login.jsp").forward(request, response);
		}
	
	}

}
