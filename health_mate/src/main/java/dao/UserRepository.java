package dao;

import java.util.ArrayList;

import dto.User;

public class UserRepository {
	
	private ArrayList<User> listOfUsers = new ArrayList<User>();
	private static UserRepository instance = new UserRepository();
	
	public static UserRepository getInstance() {
		return instance;
	}
	
	public ArrayList<User> getAllUsers(){
		return listOfUsers;
	}
	
	public User getUserById(String userID) {
		User userById = null;
		
		for(int i = 0; i<listOfUsers.size();i++) {
			User user = listOfUsers.get(i);
			if(user!=null&&user.getUserID()!=null&&user.getUserID().equals(userID)) {
				userById = user;
				break;
			}
		}
		return userById;
	}
	
	public void addProduct(User user) {
		listOfUsers.add(user);
	}

}
