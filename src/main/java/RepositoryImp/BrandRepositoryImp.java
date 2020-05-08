package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Brand;
import Entities.Category;
import Entities.Product;
import Repository.BrandRepository;
import util.connection;

public class BrandRepositoryImp implements BrandRepository {

	@Override
	public Brand create(Brand brand) {
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(brand);
    	s.getTransaction().commit();
return brand;
	}

	@Override
	public List<Brand> getAllBrand() {
	
		 EntityManager s = null;
    	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
    	List <Brand>brands=s.createQuery("from Brand").getResultList();
    	s.getTransaction().commit();
    	return brands;
	}

	@Override
	public Brand getBrand(String id) {
			
			Brand brand2=new Brand();
			for(Brand brand: getAllBrand() )
				if(brand.getName().equals(id))
					return brand;
					return brand2;
	}

}
