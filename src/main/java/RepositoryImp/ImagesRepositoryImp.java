package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Category;
import Entities.Images;
import Repository.ImagesRepository;
import util.connection;

public class ImagesRepositoryImp implements ImagesRepository{

	@Override
	public Images create(Images images) {
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(images);
    	s.getTransaction().commit();
		return images;
	}

	@Override
	public List<Images> getAllImages() {
		 EntityManager s = null;
    	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
    	List <Images>images=s.createQuery("from Images").getResultList();
    	s.getTransaction().commit();
		return images;
	}

}
