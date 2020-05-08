package Repository;

import java.util.List;

import Entities.Color;

public interface ColorRepository {
	public Color create(Color color);

	public List<Color> getAllColor();

}
