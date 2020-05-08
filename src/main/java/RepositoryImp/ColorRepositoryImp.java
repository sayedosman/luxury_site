package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Color;
import Entities.Images;
import Repository.ColorRepository;
import util.connection;

public class ColorRepositoryImp implements ColorRepository {

	@Override
	public Color create(Color color) {
		
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(color);
    	s.getTransaction().commit();
		return color;
	}

	@Override
	public List<Color> getAllColor() {
		
		EntityManager s = null;
   	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
   	List <Color>colors=s.createQuery("from Color").getResultList();
   	s.getTransaction().commit();
		return colors;
	}

}
