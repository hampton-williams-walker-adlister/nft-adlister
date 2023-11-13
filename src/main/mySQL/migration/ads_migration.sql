use nfl_adlister;

drop table if exists ads;

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user        INT UNSIGNED NOT NULL,
    player      VARCHAR(50)  NOT NULL,
    player_team INT UNSIGNED not null,
    player_position INT UNSIGNED not null,
    number      int UNSIGNED not null,
    price       int unsigned not null,
    PRIMARY KEY (id),
    FOREIGN KEY (user) references users (id),
    FOREIGN KEY (player_position) references position (id),
    FOREIGN KEY (player_team) references teams (id)
);


