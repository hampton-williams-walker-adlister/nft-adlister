package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.util.Config;
import com.mysql.cj.BindValue;
import com.mysql.cj.jdbc.Driver;
import org.w3c.dom.ls.LSOutput;

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
            String insertQuery = "INSERT INTO ads(user, player, player_team, player_position, number, price) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getPlayerName());
            stmt.setString(3, ad.getPlayerTeam());
            System.out.println(ad.getPlayerTeam());
            stmt.setString(4, ad.getPlayerPosition());
            stmt.setString(5, ad.getNumber());
            stmt.setString(6, ad.getPrice());
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
                        rs.getLong("user"),
                        rs.getString("player"),
                        teamNumber(rs.getString("player_team")),
                        getPlayerPosition(rs.getString("player_position")),
                        rs.getString("number"),
                        rs.getString("price"),
                        rs.getInt("championship")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return new Ad();
        }
        return new Ad();
    }
    public List<Ad> getUserAds(long id){
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE player LIKE ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the user's ads.", e);
        }

    }
    public String teamName(int teamNumber) {
        String sql = null;
        try {
            sql = ("select teams.team_name FROM ads join teams on ads.player_team = teams.id where ads.id = ?;");
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setLong(1, teamNumber);
            ResultSet rs = stmt.executeQuery();
            String teamName = "";
            while(rs.next()) {
                teamName = rs.getString("team_name");
                System.out.println(teamName);
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
        System.out.println(teamName(rs.getInt("player_team")));
        System.out.println(rs.getString("player_team"));
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user"),
            rs.getString("player"),
            teamName(rs.getInt("id")),
            getPlayerPosition(rs.getString("player_position")),
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
    public String teamNumber(String teamNumber) {
        String sql = null;
        try {
            sql = ("select teams.team_name FROM ads join users on ads.user = users.id join teams on ads.player_team = teams.id where ads.id = ?;");
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setLong(1, Long.parseLong(teamNumber));
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return rs.getString("team_name");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving team name.", e);
        }
        return "";
    }
    public String getPlayerPosition(String positionNumber) {
        String sql = null;
        try {
            sql = ("SELECT position.position_name from ads join position on position.id = ?;");
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setLong(1, Long.parseLong(positionNumber));
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return rs.getString("position_name");
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving player position.", e);
        }
        return "";
    }

    public static void main(String[] args) {

    }


}
