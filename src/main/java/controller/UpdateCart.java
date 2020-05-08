package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Product;

/**
 * Servlet implementation class UpdateCart
 */
public class UpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("welcomsayed");
		
		int oldQuantity=Integer.parseInt(request.getParameter("oq"));
		int newQuantity=Integer.parseInt(request.getParameter("quantity"));
		int productid=Integer.parseInt(request.getParameter("id2"));
		HttpSession session=request.getSession();
		List<Product>products=(List<Product>) session.getAttribute("products");
		if(products!=null)
		{
			System.out.println("welcom");
			for(Product product:products)
			{System.out.println("sayed");
				if(product.getId()==productid)
				{
					System.out.println("osman");
					System.out.println(session.getAttribute("price"));
					System.out.println(oldQuantity);
					System.out.println(product.getPrice());
					System.out.println(newQuantity);
					int newprice=(int)session.getAttribute("price")-oldQuantity*product.getPrice();
					System.out.println(newprice);
					int newprice2=newprice+newQuantity*product.getPrice();
					System.out.println(newprice2);
					session.setAttribute("price", newprice2);
							product.setQuantity(newQuantity);
							response.sendRedirect("Views/Checkout.jsp");
				}
			}
		}
	}

}
