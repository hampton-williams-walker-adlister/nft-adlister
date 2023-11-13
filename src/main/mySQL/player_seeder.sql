use nfl_adlister;

TRUNCATE ads;

INSERT INTO `ads` (`user`, `player`, `player_team`, `player_position`, `number`, `price`) VALUES
        ( '1', 'CeeDee Lamb', 9, 8, 88, 4500),
        ('1', 'Hjalte Frohodt', 1, 1, 72, 2500),
        ('2', 'Will Hernadez', 1, 2, 76, 2500);