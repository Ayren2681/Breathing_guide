package brcontr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class brcontroller1
 */
//@WebServlet("/breath")
public class brcontroller1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public brcontroller1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher requestDispatcher = null; 
		try{
			String val=(String) request.getParameter("custom");
			System.out.println(val);
			if(val!=null&&val.equals("Y")){
				requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/breath1.jsp");
			
			}else{
				requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/breath.jsp");
				
			}
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		
		requestDispatcher.forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
