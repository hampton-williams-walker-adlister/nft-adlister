use nfl_adlister;

drop table if exists position;

CREATE TABLE position
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    position_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

SELECT position_name FROM position;