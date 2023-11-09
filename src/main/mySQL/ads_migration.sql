use nfl_adlister;

drop table if exists ads;

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user        INT UNSIGNED NOT NULL,
    player_name VARCHAR(50)  NOT NULL,
    number      int UNSIGNED not null,
    price       int unsigned not null,
    date_posted date         not null,
    PRIMARY KEY (id),
    FOREIGN KEY (user) references users (id)
);


