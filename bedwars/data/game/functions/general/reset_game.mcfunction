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
execute as @e[tag=waiting_room,limit=1] at @s run tp @a @s

# Clearing blocks placed by players
function game:general/start_recovering

# Replacing beds and chests
setblock -726 83 -784 minecraft:red_bed[facing=north,part=foot]
setblock -726 83 -785 minecraft:red_bed[facing=north,part=head]
setblock -647 83 -705 minecraft:blue_bed[facing=east,part=foot]
setblock -646 83 -705 minecraft:blue_bed[facing=east,part=head]
setblock -726 83 -626 minecraft:lime_bed[facing=south,part=foot]
setblock -726 83 -625 minecraft:lime_bed[facing=south,part=head]
setblock -805 83 -705 minecraft:yellow_bed[facing=west,part=foot]
setblock -806 83 -705 minecraft:yellow_bed[facing=west,part=head]

setblock -731 82 -795 minecraft:air
setblock -731 82 -795 minecraft:chest[facing=east]
setblock -731 82 -797 minecraft:air
setblock -731 82 -797 minecraft:chest[facing=east]

setblock -636 82 -710 minecraft:air
setblock -636 82 -710 minecraft:chest[facing=south]
setblock -634 82 -710 minecraft:air
setblock -634 82 -710 minecraft:chest[facing=south]

setblock -721 82 -615 minecraft:air
setblock -721 82 -615 minecraft:chest[facing=west]
setblock -721 82 -613 minecraft:air
setblock -721 82 -613 minecraft:chest[facing=west]

setblock -816 82 -700 minecraft:air
setblock -816 82 -700 minecraft:chest[facing=north]
setblock -818 82 -700 minecraft:air
setblock -818 82 -700 minecraft:chest[facing=north]

# Reset armor
tag @a remove chainmail
tag @a remove iron
tag @a remove diamond
tag @a remove netherite

# Reset buffs
tag @a remove warrior
tag @a remove iron_heart
tag @a remove soul_siphon
tag @a remove combo_master
tag @a remove dream_destroyer
tag @a remove legion_commander

# Stopping the game
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set @a round_score_mb 0
scoreboard players set @a kill 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a ready 0
gamemode adventure @a[tag=!spec]
kill @e[type=item]
team leave @a
stopsound @a
clear @a

# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"Bedwars","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_BEDWARS","objective":"data"},"color":"green"},{"text":"/1","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_BEDWARS data matches 1.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"Bedwars","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_BEDWARS data matches 1.. run schedule function game:general/return_hall 10s