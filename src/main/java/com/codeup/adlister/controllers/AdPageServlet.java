package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="AdPageServlet", urlPatterns = "/adpage")
public class AdPageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("request.getParameter(\"adID\") = " + request.getParameter("adID"));
        System.out.println(DaoFactory.getAdsDao().getAdId(Long.parseLong(request.getParameter("adID"))).getPlayerName());
        request.setAttribute("ad", DaoFactory.getAdsDao().getAdId(Long.parseLong(request.getParameter("adID"))));
        request.getRequestDispatcher("/WEB-INF/ads/adpage.jsp").forward(request, response);
    }

}
