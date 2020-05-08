package Repository;

import java.util.List;

import Entities.Brand;
import Entities.Category;

public interface BrandRepository {
	public Brand create(Brand brand);

	public List<Brand> getAllBrand();
	 public Brand getBrand(String id);
	
}
