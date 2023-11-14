package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.UpdateServlet", urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/update.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User currentUser = (User) request.getSession().getAttribute("user");
        System.out.println(currentUser.getId());
        System.out.println(currentUser.getUsername());
        //User updated profile info
        String updatedUsername = request.getParameter("updatedUsername");
        System.out.println(updatedUsername);
        String updatedEmail = request.getParameter("updatedEmail");
        System.out.println(updatedEmail);
        String updatedPassword = request.getParameter("updatedPassword");
        String updatedPasswordConfirmation = request.getParameter("confirm_updated_password");

        // validate input
        boolean updatedInputHasErrors = updatedUsername.isEmpty()
                || updatedEmail.isEmpty()
                || updatedPassword.isEmpty()
                || (! updatedPassword.equals(updatedPasswordConfirmation));

        if (updatedInputHasErrors) {
            response.sendRedirect("/profile");
            return;
        }

        currentUser.setUsername(updatedUsername);
        currentUser.setEmail(updatedEmail);
        currentUser.setPassword(updatedPassword);

        // hash the password
        String updatedHash = Password.hash(currentUser.getPassword());
        currentUser.setPassword(updatedHash);

        DaoFactory.getUsersDao().update(currentUser);
        System.out.println(currentUser.getUsername());
        System.out.println(currentUser.getEmail());
        System.out.println(currentUser.getId());
        response.sendRedirect("/profile");
    }
}
