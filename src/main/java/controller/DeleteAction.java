package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Product;
import RepositoryImp.ProductRepositoryImp;

/**
 * Servlet implementation class DeleteAction
 */
public class DeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int productid=Integer.parseInt(request.getParameter("id"));
		
		List<Product>products=(List<Product>) session.getAttribute("products");
		if(products!=null)
		{
		
		//for(Product product:products)
			//{System.out.println("sayed");
				//if(product.getId()==productid)
				//{
			Product product=products.get(productid);
					System.out.println(productid);
			int NewPrice=(int)session.getAttribute("price")-product.getQuantity()*product.getPrice();
			 session.setAttribute("price",NewPrice);
			products.remove(productid);
			 session.setAttribute("products",products);
			response.sendRedirect("Views/Checkout.jsp");
			     
			
		}
		else
		{
			session.setAttribute("price",null);
			 response.sendRedirect("Views/Checkout.jsp");
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
