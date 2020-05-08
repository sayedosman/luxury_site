package RepositoryImp;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Images;
import Entities.Offer;
import Repository.OfferRepository;
import util.connection;

public class OfferRepositoryImp implements OfferRepository {

	@Override
	public Offer create(Offer offer) {
		SessionFactory sessionFactory= new connection().open();
    	Session s=sessionFactory.getCurrentSession();
    	s.beginTransaction();
    	s.save(offer);
    	s.getTransaction().commit();
		return offer;
	}

	@Override
	public List<Offer> getAllOffer() {
		EntityManager s = null;
   	 SessionFactory sessionFactory=new connection().open();
			 s=sessionFactory.getCurrentSession();
			s.getTransaction().begin();
   	List <Offer>offers=s.createQuery("from Offer").getResultList();
   	s.getTransaction().commit();
		return offers;
	}

}
