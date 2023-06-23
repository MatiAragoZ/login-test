// UserServiceImpl.java
package com.example.service;

import com.example.dao.UserDao;
import com.example.dao.UserDaoImpl;
import com.example.model.User;

public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public UserServiceImpl() {
        userDao = new UserDaoImpl();
    }

    @Override
    public boolean authenticate(String username, String password) {
        User user = userDao.getUserByUsername(username);
        return user != null && user.getPassword().equals(password);
    }
}

