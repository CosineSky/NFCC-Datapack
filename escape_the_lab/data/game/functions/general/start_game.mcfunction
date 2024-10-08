# Starting the game
title @a reset
xp set @a 0 levels
xp set @a 0 points
tag @a remove finished
gamemode adventure @a[tag=!spec]
execute as @a run function game:special_items/modify/nothing

# Teleporting
tp @a @e[tag=checkpoint,scores={journey_level=14},limit=1]

# Scores init
scoreboard players set @a ready 0
scoreboard players set @a TMP 0
scoreboard players set @a journey_level 2
scoreboard players set @a fungus_stick 0
scoreboard players set @a round_score_mb 0
scoreboard players set @a mountain_round 0

# Time
scoreboard players set GAME tick_elapsed 14400
scoreboard players set @a tick_elapsed 0
scoreboard players set @a sec_elapsed 0
scoreboard players set @a min_elapsed 0

# Switch ingame
schedule function game:general/switch_ingame 2t

# Giving effects
clear @a[tag=!spec]
effect clear @a[tag=!spec]
effect give @a[tag=!spec] speed infinite 4 true
effect give @a[tag=!spec] resistance infinite 4 true

# Coloring nametags
team join journeys @a[tag=!spec,gamemode=adventure]

# BGM settings
scoreboard players set BGM tick_elapsed 0
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Ace Race ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:quakecraft"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Extra bossbar settings
execute if score EVENT_STARTED data matches 0 run bossbar set minecraft:the_mountain players @a
execute if score EVENT_STARTED data matches 0 run bossbar set minecraft:welcome players

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_THE_MOUNTAIN data 1