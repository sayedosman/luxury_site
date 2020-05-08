package util;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entities.*;

public class connection {

	public connection() {}
	 public  SessionFactory open()
	    {
	    	SessionFactory sessionFactory =
	    			new Configuration()
	    		    .configure("hibernate.cfg.xml")
	    			.addAnnotatedClass(Brand.class)
	    			.addAnnotatedClass(Category.class)
	    			.addAnnotatedClass(Images.class)
	    			.addAnnotatedClass(Product.class)
	    			.addAnnotatedClass(User.class)
	    			.addAnnotatedClass(Size.class)
	    			.addAnnotatedClass(Color.class)
	    			.addAnnotatedClass(Offer.class)
	    		.buildSessionFactory();
	    return sessionFactory;
	    }
}
