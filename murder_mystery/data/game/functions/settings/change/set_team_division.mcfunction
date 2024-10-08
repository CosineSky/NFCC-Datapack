execute as @s[scores={bingo_settings=1}] run function game:settings/change/team_division/6v6
execute as @s[scores={bingo_settings=2}] run function game:settings/change/team_division/4v4v4
execute as @s[scores={bingo_settings=3}] run function game:settings/change/team_division/3v3v3v3

scoreboard players set @s bingo_settings 0