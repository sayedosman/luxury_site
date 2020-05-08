package Repository;

import java.util.List;

import Entities.Color;
import Entities.Size;

public interface SizeRepository {
	public Size create(Size size);
	public List<Size> getAllSizes();
}
