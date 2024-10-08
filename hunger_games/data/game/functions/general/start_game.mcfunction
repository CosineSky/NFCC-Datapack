# Starting the game
gamerule keepInventory false
xp set @a[tag=!spec] 0 levels
xp set @a[tag=!spec] 0 points
gamemode adventure @a[tag=!spec]
scoreboard players set @a kill 0
scoreboard players set @a ready 0
scoreboard players set @a respawnable 1
scoreboard players set @a tick_elapsed 0
scoreboard players set @a fungus_stick 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set @a round_score_mb 0
scoreboard players set GAME tick_elapsed 0
scoreboard objectives setdisplay list health
schedule function game:general/switch_ingame 13t
scoreboard objectives setdisplay sidebar game_status_hg

scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0

# Ingame
clear @a[tag=!spec]
effect clear @a[tag=!spec]
function game:general/refill_chests
# effect give @a minecraft:slowness 10 5 true
# effect give @a minecraft:levitation 10 255 true
effect give @a minecraft:regeneration 2 5 true
effect give @a minecraft:health_boost 114514 4 true
# execute in game:custom as @e[tag=starting_spot,limit=12] at @s run setblock ~ ~1 ~ minecraft:cobweb
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Survival Games ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:survival_games"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Teleporting players to the arean
schedule function game:general/teleport/1 1t
schedule function game:general/teleport/2 2t
schedule function game:general/teleport/3 3t
schedule function game:general/teleport/4 4t
schedule function game:general/teleport/5 5t
schedule function game:general/teleport/6 6t
schedule function game:general/teleport/7 7t
schedule function game:general/teleport/8 8t
schedule function game:general/teleport/9 9t
schedule function game:general/teleport/10 10t
schedule function game:general/teleport/11 11t
schedule function game:general/teleport/12 12t
schedule function game:general/teleport/13 13t
schedule function game:general/teleport/14 14t
schedule function game:general/teleport/15 15t
schedule function game:general/teleport/16 16t
schedule function game:general/teleport/17 17t
schedule function game:general/teleport/18 18t
schedule function game:general/teleport/19 19t
schedule function game:general/teleport/20 20t
schedule function game:general/teleport/21 21t
schedule function game:general/teleport/22 22t
schedule function game:general/teleport/23 23t
schedule function game:general/teleport/24 24t

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_SURVIVAL_GAMES data 1