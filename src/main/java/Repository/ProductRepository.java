package Repository;

import java.util.List;

import Entities.Product;


public interface ProductRepository {
	public Product create(Product category);

	public List<Product> getAllProduct();
	public Product getProduct(int id);
	public Product getProduct(String id);

}
