// LoginServlet.java
package com.example.web;

import com.example.service.UserService;
import com.example.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private UserService userService;

    public LoginServlet() {
        userService = new UserServiceImpl();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (userService.authenticate(username, password)) {
            resp.sendRedirect("home");
        } else {
            resp.sendRedirect("login");
        }
    }
}
