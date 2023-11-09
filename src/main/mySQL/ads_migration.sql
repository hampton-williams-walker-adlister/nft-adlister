use nfl_adlister;

drop table if exists ads;

CREATE TABLE ads
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user INT UNSIGNED NOT NULL,
    player_name VARCHAR(50)  NOT NULL,
    number int UNSIGNED not null,
    price int unsigned not null,
    date_posted date         not null,

    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user        INT UNSIGNED NOT NULL,
    player      VARCHAR(50)  NOT NULL,
    player_team INT UNSIGNED not null,
    player_position INT UNSIGNED not null,
    number      int UNSIGNED not null,
    price       int unsigned not null,
);




