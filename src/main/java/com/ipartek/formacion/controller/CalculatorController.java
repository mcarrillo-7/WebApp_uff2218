package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CalculatorController
 */
@WebServlet("/ejemplos/calculator")
public class CalculatorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CalculatorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float resultado = Float.parseFloat(request.getParameter("resultado")); 

		String pos = (String) request.getParameter("resultado"); 
		String operador = (String) request.getParameter("operador"); 
		HttpSession sesion = request.getSession(true); 

		float num1=0; 
		float num2=0; 

		if (pos==""){ 
		float numero = Float.parseFloat(request.getParameter("resultado"));	
		sesion.setAttribute("numero", numero); 
		resultado= num1; 
		} 
		else { 
		float numero = Float.parseFloat(request.getParameter("resultado"));	
		sesion.setAttribute("numero", numero); 
		resultado= num2; 
		} 

		if (operador == "+"){ 
		resultado = num1 + num2; 
		} 
		else if (operador == "-"){ 
		resultado = num1 - num2; 
		} 
		else if (operador == "*"){ 
		resultado = num1 * num2; 
		} 
		else if (operador == "/"){ 
		resultado = num1 / num2; 
		} 
		else if (operador == "="){ 
		resultado = num1; 
		pos=""; 
		}; 

		//sesion.setAttribute = ("resultado", new Float (resultado)); 

		RequestDispatcher rd = request.getRequestDispatcher("calculadora.jsp"); 
		if (rd != null) {rd.forward(request, response);	
		} 
	}

}
