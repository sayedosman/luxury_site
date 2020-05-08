package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.User;
import RepositoryImp.UserRepositoryImpl;

/**
 * Servlet implementation class LoginAction
 */
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String message="";
		UserRepositoryImpl userrimp=new UserRepositoryImpl();
		if(userrimp.getUser(email, pass).equals("email is not correct"))
		{
			message="email is not correct";
			response.sendRedirect("Views/Login.jsp?email="+email+"&message="+message);
		}
		else if(userrimp.getUser(email, pass).equals("password is not correct"))
		{
			message="password is not correct";
			response.sendRedirect("Views/Login.jsp?email="+email+"&message="+message);
		}
		else if(userrimp.getUser(email, pass).equals("user"))
		{
			User user=userrimp.getUser(email);
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("Views/index.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
