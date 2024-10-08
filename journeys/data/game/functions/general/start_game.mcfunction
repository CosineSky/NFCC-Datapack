# Starting the game
title @a reset
xp set @a 0 levels
xp set @a 0 points
gamemode adventure @a[tag=!spec]
tp @a @e[tag=journey_start,limit=1]
scoreboard players set @a TMP 0
scoreboard players set @a ready 0
scoreboard players set @a journey_fall 0
scoreboard players set @a journey_level 1
scoreboard players set @a bgm 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set @a round_score_mb 0
execute if score CHOSEN_MAP data matches 1 run scoreboard players set @a tick_elapsed 3820
execute if score CHOSEN_MAP data matches 2 run scoreboard players set @a tick_elapsed 5020
schedule function game:general/switch_ingame 2t
scoreboard objectives setdisplay sidebar game_status_j
clear @a[tag=!spec]
effect clear @a[tag=!spec]
effect give @a[tag=!spec] invisibility 114514 1 true
team join journeys @a[tag=!spec,gamemode=adventure]
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Parkour Warriors ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:the_journeys"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_JOURNEYS data 1