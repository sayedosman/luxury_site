package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Color;
import Entities.Size;
import Repository.SizeRepository;
import util.connection;

public class SizeRepositoryImp implements SizeRepository  {

	@Override
	public Size create(Size size) {
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(size);
    	s.getTransaction().commit();
		return size;
	}

	@Override
	public List<Size> getAllSizes() {

		EntityManager s = null;
   	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
   	List <Size>sizes=s.createQuery("from Size").getResultList();
   	s.getTransaction().commit();
		return sizes;
	}

}
