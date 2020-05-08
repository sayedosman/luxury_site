package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import RepositoryImp.BrandRepositoryImp;
import RepositoryImp.CategoryRepositoryImp;
import RepositoryImp.ProductRepositoryImp;

/**
 * Servlet implementation class SearchController
 */
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SearchController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("name");
		ProductRepositoryImp product=new ProductRepositoryImp();
		
		CategoryRepositoryImp category=new CategoryRepositoryImp();
		BrandRepositoryImp brand=new BrandRepositoryImp();
		if(product.getProduct(name).getName()!=null)
		{
			
			response.sendRedirect("Views/searchCatogery.jsp?id="+product.getProduct(name).getCategory().getName());
		}
		else if(category.getCategory(name).getName()!=null)
		{
			response.sendRedirect("Views/searchCatogery.jsp?id="+name);
			
		}
		else if(brand.getBrand(name).getName()!=null)
		{
			response.sendRedirect("Views/searchBrand.jsp?id="+name);
			
		
		}
		else
		{
			System.out.println("dsfgh");
		
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
