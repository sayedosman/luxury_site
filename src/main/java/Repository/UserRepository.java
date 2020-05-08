package Repository;


import java.util.List;

import Entities.User;


public interface UserRepository {
	
	
	public User create(User user);
	public List<User> getAllUser();
	public String getUser(String email,String pass);
	public User getUser(String email);
	public String getUser2(String fname) ;
	
}
