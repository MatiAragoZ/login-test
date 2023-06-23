// UserDaoImpl.java
package com.example.dao;

import com.example.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/login_db";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "calceto8012";

    @Override
    public User getUserByUsername(String username) {
        User user = null;
        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String query = "SELECT * FROM users WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String fetchedUsername = resultSet.getString("username");
                String fetchedPassword = resultSet.getString("password");
                user = new User();
                user.setUsername(fetchedUsername);
                user.setPassword(fetchedPassword);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
