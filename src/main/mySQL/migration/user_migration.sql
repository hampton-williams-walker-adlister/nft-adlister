use nfl_adlister;

drop table if exists users;

CREATE TABLE users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(255)  NOT NULL,
    user_email VARCHAR(255)  NOT NULL,
    user_password VARCHAR(255)  NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (user_name)
);


