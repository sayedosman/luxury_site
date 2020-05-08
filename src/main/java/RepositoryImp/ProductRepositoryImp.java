package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Category;
import Entities.Product;
import Repository.ProductRepository;
import util.connection;

public class ProductRepositoryImp implements ProductRepository{

	@Override
	public Product create(Product product) {
	
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(product);
    	s.getTransaction().commit();
return product;
		
		
	}

	@Override
	public List<Product> getAllProduct() {

		 EntityManager s = null;
    	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
    	List <Product>products=s.createQuery("from Product").getResultList();
    	s.getTransaction().commit();
    	return products;	
	}
	@Override
	public Product getProduct(int id) {

		 EntityManager s = null;
    	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
    	Product product=(Product) s.createQuery("from Product where id like:id").setParameter("id", id).getResultList().get(0);
    	s.getTransaction().commit();
    	return product;	
	}

	@Override
	public Product getProduct(String id) {
			Product product2=new Product();
			for(Product product:getAllProduct() )
				if(product.getName().equals(id))
					return product;
					return product2;
	
    	
	}

	

}
