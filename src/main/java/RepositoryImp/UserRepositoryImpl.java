package RepositoryImp;



import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;



import Entities.Product;
import Entities.User;
import Repository.UserRepository;
import util.connection;


public class UserRepositoryImpl implements UserRepository {
	

	@Override
	public User create(User user) {
		
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(user);
    	s.getTransaction().commit();
		
		return user;
	}



	
	@Override
	public String getUser(String email,String pass) {
			
			for(User user:getAllUser() )
				if(user.getEamil().equals(email)) {
					{
						if(user.getPassword().equals(pass))
							return "user";
						else
							return "password is not correct";
					}
					
				}
					return "email is not correct";
	
    	
	}
	@Override
	public String getUser2(String fname) {
			
			for(User user:getAllUser() )
				if(user.getFirstname().equals(fname)) 
					
							return "user";
					
					return null;
			
				
	
    	
	}
	@Override
	public User getUser(String email)
	{
		for(User user:getAllUser() )
		{
			if(user.getEamil().equals(email))
				return user;
		}
		return null;
	}


	@Override
	public List<User> getAllUser() {
		EntityManager s = null;
	   	 SessionFactory sessionFactory=new connection().open();
				 s=sessionFactory.getCurrentSession();
				s.getTransaction().begin();
				List<User> users=(List<User>) s.createQuery("from User").getResultList();
				s.getTransaction().commit();
		    	return users;	
	}
	 public  void update(String pass,String email)
	    {
		 User user=getUser(email);
		 System.out.println(email);
			SessionFactory sessionFactory=new connection().open();
			Session s=sessionFactory.getCurrentSession();
			s.beginTransaction();
			user.setPassword(pass);
			s.save(user);
			s.getTransaction().commit();
	    
	    }
}
