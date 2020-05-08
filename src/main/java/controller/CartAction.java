package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Product;
import RepositoryImp.ProductRepositoryImp;

/**
 * Servlet implementation class CartAction
 */
public class CartAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> products;
		
		int productid=Integer.parseInt(request.getParameter("id"));
		int productquantity=(int)Integer.parseInt(request.getParameter("quantity"));
		System.out.println(productquantity);
		ProductRepositoryImp productimp=new ProductRepositoryImp();
		Product product=productimp.getProduct(productid);
		
		/*if(productquantity<product.getQuantity())
		{
			String message="the quantity is less";
			System.out.println(productquantity);
			response.sendRedirect("/Views/singleProduct.jsp?id="+productid+"& message="+message);
		}*/
		
		HttpSession session=request.getSession();
		products=(List<Product>) session.getAttribute("products");
		if(products==null&&session.getAttribute("price")==null) {
		
			products=new ArrayList<Product>();
			product.setQuantity(productquantity);
			products.add(product);
			session.setAttribute("products", products);
			
			session.setAttribute("price", productquantity*product.getPrice());
			
			RequestDispatcher d=request.getRequestDispatcher("SearchController?name="+product.getName());
			//response.sendRedirect("Views/SearchController.jsp");
			d.forward(request, response);
			
			
		}
		else
		{
			
			product.setQuantity(productquantity);
			products.add(product);
			session.setAttribute("products", products);
			session.setAttribute("price",(int)session.getAttribute("price")+ productquantity*product.getPrice());
			RequestDispatcher d=request.getRequestDispatcher("SearchController?name="+product.getName());
			//response.sendRedirect("Views/SearchController.jsp");
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
