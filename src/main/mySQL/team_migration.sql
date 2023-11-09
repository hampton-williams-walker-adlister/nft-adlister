use nfl_adlister;

drop table if exists teams;

CREATE TABLE teams
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

