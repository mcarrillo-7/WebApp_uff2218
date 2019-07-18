package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.pojo.Alert;

/**
 * Servlet implementation class NombresController
 */
@WebServlet("/nombres")
public class NombresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<String> listanombres;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("1º peticion de un cliente");
		listanombres = new ArrayList<String>();
		listanombres.add("Veronica");
		listanombres.add("Juanma");
		listanombres.add("Eider");
		listanombres.add("Giovanni");
	}

	public void destroy() {
		System.out.println("Al parar el servidor");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Antes de servir GET o POST");
		super.service(request, response);
		System.out.println("Despues de servir GET o POST");

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String buscar = request.getParameter("buscar");
		Alert mensaje = new Alert("danger", "Nombre no valido");
		if (buscar != null && !buscar.trim().isEmpty()) {

			ArrayList<String> listaFiltrada = new ArrayList<String>();
			for (String nombre : listanombres) {
				if (nombre.toLowerCase().contains(buscar.toLowerCase())) {
					listaFiltrada.add(nombre);
				} else {
					request.setAttribute("mensaje", "No hay coincidencias");
				}
			}

			request.setAttribute("nombres", listaFiltrada);
		} else {
			request.setAttribute("nombres", listanombres);
		}

		request.setAttribute("mensaje", null);
		request.setAttribute("buscar", buscar);
//		request.setAttribute("listanombres", listanombres);

		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		Alert mensaje = new Alert("danger", "Nombre no valido");

		if (nombre != null) {

			nombre = nombre.trim();

			if ("".equalsIgnoreCase(nombre)) {
				mensaje = new Alert("warning", "Nombre no valido, intentalo de nuevo");
			} else {
				listanombres.add(nombre);
				mensaje = new Alert("success", "Nombre creado con exito");
			}

		}

		request.setAttribute("mensaje", mensaje);
		request.setAttribute("nombres", listanombres);

	}
}
