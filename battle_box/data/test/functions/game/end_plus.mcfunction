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

# Close the door
execute if score CHOSEN_MAP data matches 101 run setblock 23 8 0 redstone_block
execute if score CHOSEN_MAP data matches 101 run setblock -23 8 0 redstone_block
execute if score CHOSEN_MAP data matches 101 run setblock 23 8 0 air
execute if score CHOSEN_MAP data matches 101 run setblock -23 8 0 air
execute if score CHOSEN_MAP data matches 102 run setblock 19 6 49 redstone_block
execute if score CHOSEN_MAP data matches 102 run setblock -23 6 49 redstone_block
execute if score CHOSEN_MAP data matches 102 run setblock 19 6 49 air
execute if score CHOSEN_MAP data matches 102 run setblock -23 6 49 air
execute if score CHOSEN_MAP data matches 103 run setblock 23 18 98 redstone_block
execute if score CHOSEN_MAP data matches 103 run setblock -23 18 98 redstone_block
execute if score CHOSEN_MAP data matches 103 run setblock 23 18 98 air
execute if score CHOSEN_MAP data matches 103 run setblock -23 18 98 air

# Clearing cobwebs
execute if score CHOSEN_MAP data matches 102 run fill -20 -4 31 16 12 67 air replace minecraft:cobweb

# Reset the game
effect give @a instant_health
tag @a remove already
kill @e[type=marker,tag=lava_mover]
function test:game/tp
gamerule doTileDrops true
stopsound @a master
execute if score CHOSEN_MAP data matches 101 run fill 1 1 1 -1 1 -1 white_wool
execute if score CHOSEN_MAP data matches 102 run fill -3 3 48 -1 3 50 white_wool
execute if score CHOSEN_MAP data matches 103 run fill -1 -3 97 1 -3 99 white_wool
team leave @a
scoreboard players set STARTED data 0 
scoreboard players set INGAME data 0 
scoreboard players set @a round_score_mb 0
scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0
scoreboard players set @a ready 0

# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"Battle Box","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_BATTLE_BOX","objective":"data"},"color":"green"},{"text":"/5","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_BATTLE_BOX data matches 5.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"Battle Box","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_BATTLE_BOX data matches 5.. run schedule function test:game/return_hall 10s