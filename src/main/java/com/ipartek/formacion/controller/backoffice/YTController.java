package com.ipartek.formacion.controller.backoffice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.ipartek.formacion.model.pojo.Alert;
import com.ipartek.formacion.model.dao.VideoDAO;
import com.ipartek.formacion.model.pojo.Video;

/**
 * Servlet implementation class YTController
 */
@WebServlet("/backoffice/YTController")
public class YTController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String VIEW_INDEX = "youtube/index.jsp";
	public static final String VIEW_FORM  = "youtube/formulario.jsp";
	public static final String VIEW_DETALLE  = "youtube/detalle.jsp";
	public static String view  = VIEW_INDEX;
    public static final String OP_LISTAR="1";
    public static final String OP_DETALLE="13";
    public static final String OP_GUARDAR = "23";
	public static final String OP_NUEVO = "4";
	public static final String OP_ELIMINAR = "hfd3";
	public static final String OP_ELI = "ihfd3";
	
	
    
	private static VideoDAO videoDAO;
	
	 ValidatorFactory factory;
	 Validator validator;

	@Override
	public void init(ServletConfig config) throws ServletException {	
		super.init(config);
		videoDAO = VideoDAO.getInstance(); 
		factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doProcess(request, response);
	}
	
protected void doProcess (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String op = request.getParameter("op");
		if ( op == null ) {
			op = OP_LISTAR;	
		}
		
		switch (op) {
		case OP_DETALLE:
			detalle(request, response);
			break;
			
		case OP_GUARDAR:
			guardar(request, response);
			break;
			
		case OP_ELIMINAR:
			eliminar(request, response);
			break;
			
		case OP_NUEVO:
			nuevo(request, response);
			break;		
			
			// TODO resto de metodos

		// TODO resto de metodos	
			
		default:
			listar(request, response);
			break;
		}
		
		request.getRequestDispatcher(view).forward(request, response);

	}

		private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setAttribute("videos", videoDAO.getAll() );
			view = VIEW_INDEX;
		
			
		}
		
		private void detalle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String sid = request.getParameter("id");
			int id = Integer.parseInt(sid);
			
			Video v = videoDAO.getById(id);
			request.setAttribute("video", v );
			view = VIEW_DETALLE;
			
			HttpSession session = request.getSession();
			HashMap<Integer,Video> videosVistos = (HashMap<Integer,Video>)session.getAttribute("videosVistos");
			if ( videosVistos == null ) {
				videosVistos = new HashMap<Integer,Video>();
			}		
			videosVistos.put(v.getId(), v);
			session.setAttribute("videosVistos", videosVistos);
			
		}
		
		private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setAttribute("video", new Video() );
			view = VIEW_FORM;
			
		}

		private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			// TODO Eliminar con DAO
			String sid = request.getParameter("id");
			int id = Integer.parseInt(sid);

			if ( videoDAO.delete(id) ) {
				request.setAttribute("mensaje", new Alert("warning","Registro Eliminado"));
			}else {
				request.setAttribute("mensaje", new Alert("danger","ERROR, no se pudo eliminar"));
			}
			listar(request, response);
			
			
			
		}

		private void guardar(HttpServletRequest request, HttpServletResponse response) {
			
			String sid = request.getParameter("id");
			String nombre = request.getParameter("nombre");
			String codigo = request.getParameter("codigo");
			
			//TODO llamar al DAO
			//   si id == -1 => INSERT
			//   si id > 0   => UPDATE
			
			Video v = new Video();
			v.setId(Integer.parseInt(sid));
			v.setNombre(nombre);
			v.setCodigo(codigo);
			
			Set<ConstraintViolation<Video>> violations = validator.validate(v);
			if(violations.isEmpty())
			{
				try {
					if(v.getId()==-1) { 
						videoDAO.crear(v);
						request.setAttribute("mensaje", new Alert("success", "Video creado correctamente"));
					} else {
						videoDAO.modificar(v);
					}
					request.setAttribute("mensaje", new Alert("success", "Registro cambiado"));
				} catch (Exception e) {
					request.setAttribute("mensaje", new Alert("danger", "Problema detectado"));
				}
				
			}else {
				String mensaje = "";
				
				for (ConstraintViolation<Video> violation : violations) {
					mensaje += violation.getPropertyPath() +": " + violation.getMessage() +"<br>";
				}
				request.setAttribute("mensaje", new Alert("warning", mensaje ));
				}
			
			
			request.setAttribute("video", v );
			view = VIEW_FORM;	
			
			
		}

}
