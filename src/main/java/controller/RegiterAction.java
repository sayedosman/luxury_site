package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.User;
import RepositoryImp.UserRepositoryImpl;

/**
 * Servlet implementation class RegiterAction
 */
public class RegiterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegiterAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String repass=request.getParameter("passr");
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String message=request.getParameter("message");
        String mobile=request.getParameter("mobile ");
        String address=request.getParameter("address");
        String gender=request.getParameter("gender");
        UserRepositoryImpl userimp=new UserRepositoryImpl();
        
        	Pattern p = Pattern.compile("\\b[A-Z0-9._%-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b");
        	Matcher m = p.matcher(email);
        	String str="\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}";
        	
        		
        
        if(!pass.equals(repass))
        {
        	message ="not the same password";
        	response.setStatus(307); //this makes the redirection keep your requesting method as is.
        	response.addHeader("Views/Register.jsp?message="+message, "http://localhost.to/redirect");
        	
        	//response.sendRedirect("Views/Register.jsp?message="+message);
        	
        }
        else if(fname.length()<3||lname.length()<3) {
        	message="please fill this names";
        	response.sendRedirect("Views/Register.jsp?message="+message);
    		
        }
        else if(userimp.getUser2(fname).equals("user"))
        {
        	message="the name are used";
        	response.sendRedirect("Views/Register.jsp?message="+message);
    		
        }
        else  if(!m.find())
    	{
    		message="the mail not correct";
        	response.sendRedirect("Views/Register.jsp?message="+message);
    	
    	}
        else  if(!Pattern.compile(str).matcher(mobile).matches())
    	{
    		message="mobile is not correct";
        	response.sendRedirect("Views/Register.jsp?message="+message);
    	
    	}
        else
        {
        	User user=new User();
        	user.setAddress(address);
        	user.setEamil(email);
        	user.setFirstname(fname);
        	user.setLastname(lname);
        	user.setPhone(mobile);
        	user.setGender(gender);
        	user.setPassword(pass);
        	userimp.create(user);
        	
        
        }
       
	}

}
