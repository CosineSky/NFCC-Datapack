# Announcing scores
execute as @a[tag=!spec] run scoreboard players operation @s total_score_hub += @s round_score_mb
execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Ingame
scoreboard players set @a bingo_player 0
function game:itemlist/acquire/clear_all
worldborder set 20000
execute in multi:bingo run tp @e[tag=bingo_table_entry] 0 0 0
execute in multi:bingo run tp @e[tag=bingo_table_background] 0 0 0

# Teleporting to waiting room
execute in multi:bingo run tp @a -17 110 33 facing -33 112 33

# Stopping the game
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a round_score_mb 0
scoreboard players set @a ready 0
scoreboard players set @a data 0
gamemode adventure @a[tag=!spec]
gamerule doDaylightCycle false
gamerule doWeatherCycle false
effect clear @a
time set noon
weather clear
team leave @a
stopsound @a
clear @a