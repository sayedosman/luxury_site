package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllController
 */
public class AllController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Search=request.getParameter("submit");
		System.out.println(Search);
		
		if(Search.equals("search"))
		{
			RequestDispatcher d=request.getRequestDispatcher("SearchController");
		d.forward(request, response);
		
		}
		else if(Search.equals("Add to cart")) {
			RequestDispatcher d=request.getRequestDispatcher("CartAction");
			d.forward(request, response);
		}
		else if(Search.equals("Update"))
				{
			RequestDispatcher d=request.getRequestDispatcher("UpdateCart");
			d.forward(request, response);
				}
		else if(Search.equals("Login"))
		{
	RequestDispatcher d=request.getRequestDispatcher("LoginAction");
	d.forward(request, response);
		}
		else if(Search.equals("Forget"))
		{
			RequestDispatcher d=request.getRequestDispatcher("ForgetPasswordAction");
			d.forward(request, response);
		}
		else if(Search.equals("repass"))
		{
			RequestDispatcher d=request.getRequestDispatcher("ForgetPasswordAction2");
			d.forward(request, response);
		}
		else if(Search.equals("register"))
		{
			RequestDispatcher d=request.getRequestDispatcher("RegiterAction");
			d.forward(request, response);
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
