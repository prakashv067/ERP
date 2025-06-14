package com.example.controller; // Adjust the package name as needed

import com.example.dao.UserAuthenticationDAO;
import com.example.model.UserLogin;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserLoginController extends HttpServlet {
    private UserAuthenticationDAO userAuthDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        userAuthDAO = new UserAuthenticationDAO(); // Initialize DAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create UserLogin POJO and set data
        UserLogin userLogin = new UserLogin();
        userLogin.setUsername(username);
        userLogin.setPassword(password);

        // Authenticate user
        boolean isAuthenticated = userAuthDAO.authenticate(userLogin);

        // Dispatch based on the result
        if (isAuthenticated) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp?error=invalid").forward(request, response);
        }
    }
}
