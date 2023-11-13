use nfl_adlister;

SELECT CONCAT(player) AS full_name
FROM ads
GROUP BY player
LIMIT 25;


SELECT * FROM ads WHERE player_position like '%1%';

select player from ads Where player_position BETWEEN 4 and 7;

SELECT player
from ads
where player_position in (
    select player_position
    from ads
    where player_position = 10
);