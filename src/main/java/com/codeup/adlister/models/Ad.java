package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String playerName;
    private String playerTeam;
    private String playerPosition;
    private String number;
    private String price;
<<<<<<< HEAD
=======
    private int championship;


    public Ad(long id, long userId, String playerName, String playerTeam, String playerPosition, String number, String price, int championship) {
        this.id = id;
        this.userId = userId;
        this.playerName = playerName;
        this.playerTeam = playerTeam;
        this.playerPosition = playerPosition;
        this.number = number;
        this.price = price;
        this.championship = championship;
    }
>>>>>>> 4f8274e84a1315cffe7e672ecbded3f73ea36ef7

    public Ad(long id, long userId, String playerName, String playerTeam, String playerPosition, String number, String price) {
        this.id = id;
        this.userId = userId;
        this.playerName = playerName;
        this.playerTeam = playerTeam;
        this.playerPosition = playerPosition;
        this.number = number;
        this.price = price;
    }

<<<<<<< HEAD
=======



>>>>>>> 4f8274e84a1315cffe7e672ecbded3f73ea36ef7
    public Ad(long userId, String playerTeam, String playerPosition, String playerName, String number, String price) {
        this.userId = userId;
        this.playerTeam = playerTeam;
        this.playerPosition = playerPosition;
        this.playerName = playerName;
        this.number = number;
        this.price = price;
    }
    public Ad() {}
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

    public int getChampionship() {
        return championship;
    }

    public void setChampionship(int championship) {
        this.championship = championship;
    }
}
