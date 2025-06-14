package com.example.controller; // Adjust the package name as needed

import com.example.dao.UserDAO;
import com.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SignupController extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        userDAO = new UserDAO(); // Initialize UserDAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create User POJO and set data
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);

        // Add user to the database
        boolean success = userDAO.addUser(user);

        // Dispatch based on the result
        if (success) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }
}
