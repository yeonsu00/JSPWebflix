package dao;


import dto.Membership;
import dto.User;

import java.util.ArrayList;

public class UserRepository {
    ArrayList<User> listOfUsers = new ArrayList<User>();
    private static UserRepository instance = new UserRepository();

    public UserRepository() {
        User user1 = new User();
        user1.setName("관리자");
        user1.setPassword("1234");
        user1.setId("admin");
        listOfUsers.add(user1);

        User user2 = new User();
        user2.setName("김경기");
        user2.setPassword("1234");
        user2.setId("kyonggi");
        listOfUsers.add(user2);
    }

    public ArrayList<User> getAllUsers() {
        return listOfUsers;
    }

    public static UserRepository getInstance() {
        return instance;
    }

    public User getUserById(String userId) {
        User userById = null;
        for (int i = 0; i < listOfUsers.size(); i++) {
            User user = listOfUsers.get(i);
            if (user != null && user.getId() != null && user.getId().equals(userId)) {
                userById = user;
                break;
            }
        }
        return userById;
    }
}
