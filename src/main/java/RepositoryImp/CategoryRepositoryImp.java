package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Brand;
import Entities.Category;
import Repository.CategoryRepository;

import util.*;

public class CategoryRepositoryImp implements CategoryRepository {
	@Override 
	public Category  create(Category category)
	    {

	    	SessionFactory sessionFactory= new connection().open();
	    	Session s=sessionFactory.getCurrentSession();
	    	s.beginTransaction();
	    	s.save(category);
	    	s.getTransaction().commit();
	return category;
	    	
	    }
	 @Override
	 public List<Category> getAllCategory() {

    	 EntityManager s = null;
    	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
    	List <Category>categories=s.createQuery("from Category").getResultList();
    	s.getTransaction().commit();
    	return categories;
	}
	 @Override
	 public Category getCategory(String id) {
		 Category category2=new Category ();
		
				for(Category category:getAllCategory() )
					if(category.getName().equals(id))
					{System.out.println("welcom");
						return category;
					}
						return category2;
	}
    
}
