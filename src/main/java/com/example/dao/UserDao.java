// UserDao.java
package com.example.dao;

import com.example.model.User;

public interface UserDao {
    User getUserByUsername(String username);
}

