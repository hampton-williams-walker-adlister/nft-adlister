package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        List<Ad> ads = DaoFactory.getAdsDao().all();
        for (Ad ad: ads) {
            System.out.println("name " + ad.getPlayerName());
            System.out.println("team " + ad.getPlayerTeam());
            System.out.println("position " + ad.getPlayerPosition());
            System.out.println("number " + ad.getNumber());
            System.out.println("$ " + ad.getPrice());
            System.out.println("championship " + ad.getChampionship());
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userSearch = request.getParameter("search");
        request.setAttribute("ads", DaoFactory.getAdsDao().findMultiple(userSearch));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }
}
