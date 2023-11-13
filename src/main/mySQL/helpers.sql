use nfl_adlister;

# Show all players uptil a certian amount

SELECT CONCAT(player) AS full_name
FROM ads
GROUP BY player
LIMIT 25;

# Show players at certian position

SELECT player FROM ads WHERE player_position like 1;

# show players in a couple positions

select player from ads Where player_position BETWEEN 4 and 7;

# Show players that play a certain postion

SELECT player
from ads
where player_position in (
    select player_position
    from ads
    where player_position = 10
);

# display users name and team they are on
#
SELECT ads.player as Player, teams.team_name as Team
from ads
join teams on teams.id = player_team;
#
# display players name and poistion they play
#
SELECT ads.player as Player, position.position_name as Position
from ads
         join position on position.id = player_position;

# show players who have a super bowl

SELECT ads.player as Player, ads_championships.championship_id as Championship_Year
from ads_championships
left join ads on ads.id = ads_championships.player_id;