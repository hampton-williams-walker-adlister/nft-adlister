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


    @Override
    public List<Ad> findMultiple(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE ads.user = ?");
            stmt.setLong(1, id);
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

    @Override
    public Ad getAdId(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("select * from ads where id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Ad(
                        rs.getLong("id"),
                        rs.getString("user"),
                        rs.getString("player_name"),
                        rs.getString("number"),
                        rs.getString("price"),
                        rs.getString("description")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return new Ad();
        }
        return new Ad();
    }



    public String teamName(String teamNumber) {
        String sql = null;

        try {
            sql = ("select teams.team_name FROM ads join users on ads.user = users.id join teams on ads.player_team = teams.id where ads.id = ?;");

            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setLong(1, Long.parseLong(teamNumber));

            ResultSet rs = stmt.executeQuery();

            String teamName = "";

            if(rs.next()) {
                teamName = rs.getString("team_name");
            }

            return teamName;

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving team name.", e);
        }
    }


    public int playerChampionship(String playerName) {
        String sql = null;

        try {
            sql = ("SELECT championship.championship_year FROM championship JOIN ads_championships ON championship.id = ads_championships.championship_id JOIN ads ON ads_championships.player_id = ads.id WHERE player = ?;");

            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, playerName);

            ResultSet rs = stmt.executeQuery();

            int championshipYear = 0;

            if(rs.next()) {
                championshipYear = rs.getInt("championship_year");
            }

            return championshipYear;

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving team name.", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {

        return new Ad(
            rs.getLong("id"),
            rs.getLong("user"),
            rs.getString("player"),
            teamName(rs.getString("player_team")),
            rs.getString("player_position"),
            rs.getString("number"),
            rs.getString("price"),
            playerChampionship(rs.getString("player"))
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

}
