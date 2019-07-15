package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.pojo.Youtube;

/**
 * Servlet implementation class YTController
 */
@WebServlet("/crearVideo")
public class YTController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YTController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String codigo = request.getParameter("codigo");
		Youtube youtube = null;
				
		
		try {
			youtube = new Youtube(title, codigo);
			request.setAttribute("youtube", youtube);
		
			//llama a la siguiente pagina a la que va a ir
			request.getRequestDispatcher("/respuesta2.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("mensaje", "VUELVE A INTRODUCIR LOS DATOS, POR FAVOR!!");
			request.setAttribute("mensaje", "LONGITOD 2-150 CARACTERES");
			request.setAttribute("mensaje", "LONGITUD MAXIMA DE 11");
			request.getRequestDispatcher("saludo/youtube.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
