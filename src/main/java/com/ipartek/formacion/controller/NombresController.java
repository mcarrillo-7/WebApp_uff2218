package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NombresController
 */
@WebServlet("/nombres")
public class NombresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ArrayList<String> listanombres = new ArrayList<String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NombresController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listanombres.clear();
		listanombres.add("Manolo");
		listanombres.add("Pepito");
		listanombres.add("Juan");
		listanombres.add("Giovanni");
		String nombre = request.getParameter("nombre");
		request.setAttribute("listanombres", listanombres);
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		listanombres.add(nombre);
		request.setAttribute("nombres", listanombres);
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}

}
