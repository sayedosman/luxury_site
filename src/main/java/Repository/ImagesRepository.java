package Repository;

import java.util.List;

import Entities.Images;

public interface ImagesRepository {
	public Images create(Images images);

	public List<Images> getAllImages();
}
