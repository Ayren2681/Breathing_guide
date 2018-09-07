package brcontr;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.getsql;

/**
 * Servlet implementation class login
 */
//@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher requestDispatcher = null; 
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Map model = new HashMap();
		if(username != null){
			getsql chobj=new getsql();
			boolean success =chobj.check(username, password);
		System.out.println("loginaction  "+success);
		//model.put("state", success);
			if(success==true){
				
				requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/breath.jsp");
				
				}
			else{
				requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/error.htm");
				
			 }
			}
		requestDispatcher.forward(request, response);
	}

}
