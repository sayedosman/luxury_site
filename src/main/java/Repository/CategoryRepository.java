package Repository;

import java.util.List;

import Entities.Category;

public interface CategoryRepository {
	
	public Category create(Category category);

	public List<Category> getAllCategory();
	 public Category getCategory(String id);
	
}
