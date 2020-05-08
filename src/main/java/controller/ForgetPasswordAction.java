package controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.sun.mail.smtp.SMTPTransport;
import RepositoryImp.UserRepositoryImpl;

/**
 * Servlet implementation class ForgetPasswordAction
 */
public class ForgetPasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String message="";
		UserRepositoryImpl userrimp=new UserRepositoryImpl();
		if(userrimp.getUser(email)==null)
		{
			message="email is not correct";
			response.sendRedirect("Views/ForgetPassword.jsp?email="+email+"&message="+message);
		}
		else 
		{
			

            String uemail="sayedothman46@gmail.com";
            String upass="sayosm1234";
            
            Properties props = System.getProperties();
                    props.put("mail.smtps.host","smtp.gmail.com");
                    props.put("mail.smtps.auth","true");
            
            props.put("mail.smtp.starttls","true");
            
            Session  session = Session.getInstance(props,null);
                 
                  try {
                            Message msg = new MimeMessage(session);
                            msg.setFrom(new InternetAddress("sayedothman46@gmail.com",false));
                        

                        msg.addRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
                        msg.setSubject("mail vervication");
                    
                        msg.setText("your vervication link is ::"+"http://localhost:1432/ecomercewepappi/Views/ForgetPassword2.jsp?email="+email);
                        msg.setHeader("X-Mailer", "Tov Are's program");
                            SMTPTransport t =
                                       (SMTPTransport)session.getTransport("smtps");
                      t.connect("smtp.gmail.com","sayedothman46@gmail.com", "sayosm1234");
                                   t.sendMessage(msg, msg.getAllRecipients());
                        } catch (MessagingException ex) {
                      System.out.println(ex.toString());
                  Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                
                
                
                
          
			
			
			
			
			

			response.sendRedirect("Views/Login.jsp?email="+email+"&message="+message);
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
