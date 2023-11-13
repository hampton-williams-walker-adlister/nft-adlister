package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String playerName;
    private String number;
    private String price;
    private String description;

    public Ad(long id, long userId, String playerName, String number, String price, String description) {
        this.id = id;
        this.userId = userId;
        this.playerName = playerName;
        this.number = number;
        this.price = price;
        this.description = description;
    }

    public Ad(long userId, String playerName, String number, String price, String description) {
        this.userId = userId;
        this.playerName = playerName;
        this.number = number;
        this.price = price;
        this.description = description;
    }

    public Ad() {
        
    }

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
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
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}
