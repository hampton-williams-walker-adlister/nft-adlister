use nfl_adlister;

drop table if exists championship;

CREATE TABLE championship
(

    id                INT UNSIGNED NOT NULL AUTO_INCREMENT,
    championship_year INT UNSIGNED,
    PRIMARY KEY (id)
);
