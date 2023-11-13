use nfl_adlister;

drop table if exists ads_championships;

CREATE TABLE ads_championships (

    player_id INTEGER UNSIGNED NOT NULL,
    championship_id INTEGER UNSIGNED NOT NULL,
    foreign key (player_id) references ads(id),
    foreign key (championship_id) references championship (id)
);