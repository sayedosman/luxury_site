package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import RepositoryImp.UserRepositoryImpl;

/**
 * Servlet implementation class ForgetPasswordAction2
 */
public class ForgetPasswordAction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordAction2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String pass =request.getParameter("pass");
		String repass =request.getParameter("repass");
		String email =request.getParameter("email");
		String message="";
		if(pass.equals(repass))
		{
			UserRepositoryImpl userimp=new UserRepositoryImpl();
			userimp.update(pass, email);
			session.setAttribute("user",userimp.getUser(email) );
			response.sendRedirect("Views/index.jsp");
		}
		else
		{
			message="not the same pass";
			response.sendRedirect("Views/ForgetPassword2.jsp?message="+message);
		}
	}

}
