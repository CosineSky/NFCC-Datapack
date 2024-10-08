# Teleporting to the arean
team leave @a
function game:general/teleport/base
schedule function game:general/teleport/tp 30t
schedule function game:general/switch_ingame 32t

# Starting the game
gamemode adventure @a[tag=!spec]
scoreboard players set @a kill 0
scoreboard players set @a ready 0
scoreboard players set @a respawnable 1
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set @a round_score_mb 0
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay sidebar game_status

scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0

clear @a[tag=!spec]
effect clear @a[tag=!spec]
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Sky Battle ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:bedwars"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Equiping armor
function game:ingame/armor

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_BEDWARS data 1