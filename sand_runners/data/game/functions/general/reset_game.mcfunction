# Multiplying scores
execute if score PLAYED_GAMES data matches 0 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_10 data
execute if score PLAYED_GAMES data matches 1 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_12 data
execute if score PLAYED_GAMES data matches 2 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_14 data
execute if score PLAYED_GAMES data matches 3 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_16 data
execute if score PLAYED_GAMES data matches 4 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_18 data
execute if score PLAYED_GAMES data matches 5 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_20 data
scoreboard players operation @a[tag=!spec] round_score_mb /= CONST_10 data

# Announcing scores
execute as @a[tag=!spec] run scoreboard players operation @s total_score_hub += @s round_score_mb
execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Teleporting to waiting room
tp @a @e[tag=waiting_room_sr,limit=1]

# Replace floors
fill 489 73 -50 450 73 -11 minecraft:tnt replace minecraft:air
fill 489 43 -50 450 43 -11 minecraft:lava replace minecraft:air
fill 489 45 -50 450 45 -11 minecraft:tnt replace minecraft:air

# Stopping the game
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set GAME tick_elapsed 0
scoreboard players set @a round_score_mb 0
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a ready 0
gamemode adventure @a[tag=!spec]
kill @e[type=item]
effect clear @a[tag=!spec]
team leave @a[tag=!spec]
stopsound @a
clear @a

# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"Lava Dancers","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_LAVA_DANCERS","objective":"data"},"color":"green"},{"text":"/2","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_LAVA_DANCERS data matches 2.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"Lava Dancers","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_LAVA_DANCERS data matches 2.. run schedule function game:general/return_hall 10s