package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // find all the records
    List<Ad> all();

    //find multiple records by name
    List<Ad> findMultiple(String name);

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
}
