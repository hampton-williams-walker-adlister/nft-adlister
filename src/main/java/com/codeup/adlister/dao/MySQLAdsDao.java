package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.util.Config;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                Config.getUrl(),
                Config.getUser(),
                Config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    //get a list of all ads
    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> findMultiple(String name) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE player LIKE ?");
            stmt.setString(1, "%" + name + "%");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving one of the ads.", e);
        }
    }

    //insert ads into database
    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user, player, number, price) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getPlayerName());
            stmt.setString(3, ad.getNumber());
            stmt.setString(4, ad.getPrice());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {

        return new Ad(
            rs.getLong("user"),
            teamNumber(rs.getString("player_team")),
            rs.getString("player_position"),
            rs.getString("player"),
            rs.getString("number"),
            rs.getString("price")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public String teamNumber(String teamNumber) {
        String sql = null;
        try {
            sql = ("select teams.team_name FROM ads join users on ads.user = users.id join teams on ads.player_team = teams.id where ads.id = ?;");

            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setLong(1, Long.parseLong(teamNumber));

            ResultSet rs = stmt.executeQuery();
            rs.next();

            //here: extract a team object or value from rs
            return rs.getString("team_name");

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving team name.", e);
        }
    }



}
