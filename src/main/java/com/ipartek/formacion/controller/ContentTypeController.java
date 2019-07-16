package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContentTypeController
 */
@WebServlet("/servlet3")
public class ContentTypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentTypeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String tipo = request.getParameter("p");
		String responsiveContent = "perro buba, raza boxer, <p>no renderiza html porque le hemos dicho texto plano</p>";
		switch (tipo) {
		case "1":
			response.setContentType("text/plain");
			break;
		case "2":
			response.setContentType("text/html");
			responsiveContent = "<h1>perro buba</h1> <p>raza boxer</p> <p>renderiza html</p>";
			break;
		case "3":
			response.setContentType("application/json");
			responsiveContent += " { ";
			responsiveContent += " \"nombre\": \"buba\", ";
			responsiveContent += " \"raza\": \"boxer\" ";
			responsiveContent += " } ";
			break;
		case "4":
			response.setContentType("application/pdf");
			
			break;

		default:
			response.setContentType("text/plain");
			break;
		}
		
		PrintWriter out = response.getWriter();
		out.print(responsiveContent);		
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
