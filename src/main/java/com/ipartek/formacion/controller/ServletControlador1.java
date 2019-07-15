package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletControlador1
 */
@WebServlet("/controlador1")
public class ServletControlador1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// obtener datos del cliente a traves de la request
		
		
		//dar una respuesta a traves de la response
		PrintWriter out = response.getWriter();
		out.print("<h1> respuesta desde  ServletControlador1</h1>");
		out.print("<h2>Parametros</h2>");
		out.print("<ul>");
			Enumeration<String> eParams = request.getParameterNames();
			while (eParams.hasMoreElements()) {
				String parName = eParams.nextElement();
				String parvalue = request.getParameter(parName);
				
				
				if ("user-agent".equalsIgnoreCase(parName)) {
					out.print("<li style=\"background:yellow\">" + parName + "<b>" + parvalue + "</b></li>");
				} else {
					out.print("<li>" + parName + "<b>" + parvalue + "</b></li>");
				}
			}
		out.print("</ul>");
		out.print("<p> User-Agent <b> " + request.getHeader("user-agent") + "</b></p>");
		
		//mirar version http y mas cosas
		request.getParameterNames();
		//todos datos cabecera
		
		//todos parametros que envie el usuario

		out.print(request.getParameter("param1") + "<br>");
		out.print(request.getParameter("param2") + "<br>");
		out.print(request.getParameter("p3"));
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
