package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String playerName;
    private String playerTeam;
    private String playerPosition;

    public Ad(long id, long userId, String playerName, String playerTeam, String playerPosition, String number, String price) {
        this.id = id;
        this.userId = userId;
        this.playerName = playerName;
        this.playerTeam = playerTeam;
        this.playerPosition = playerPosition;
        this.number = number;
        this.price = price;
    }

    private String number;
    private String price;


    public Ad(long userId, String playerTeam, String playerPosition, String playerName, String number, String price) {
        this.userId = userId;
        this.playerTeam = playerTeam;
        this.playerPosition = playerPosition;
        this.playerName = playerName;
        this.number = number;
        this.price = price;
    }

    public Ad() {
        
    }

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public String getPlayerTeam() {
        return playerTeam;
    }
    public void setPlayerTeam(String playerTeam) {
        this.playerTeam = playerTeam;
    }
    public String getPlayerPosition() {
        return playerPosition;
    }
    public void setPlayerPosition(String playerPosition) {
        this.playerPosition = playerPosition;
    }
    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
    public String getPlayerName() {
        return playerName;
    }
    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }
    public String getNumber() {
        return number;
    }
    public void setNumber(String number) {
        this.number = number;
    }
    public String getPrice() {return price; }
    public void setPrice(String price) {this.price = price; }
}
