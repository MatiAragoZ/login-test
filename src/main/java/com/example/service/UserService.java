// UserService.java
package com.example.service;

import com.example.model.User;

public interface UserService {
    boolean authenticate(String username, String password);
}

