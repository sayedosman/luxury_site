package Repository;

import java.util.List;

import Entities.Offer;

public interface OfferRepository {
	public Offer create(Offer offer);

	public List<Offer> getAllOffer();
}
