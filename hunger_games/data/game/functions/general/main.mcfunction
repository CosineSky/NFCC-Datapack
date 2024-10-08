# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# Game time
scoreboard players add GAME tick_elapsed 1
execute as @a[gamemode=spectator] at @s if score GAME tick_elapsed matches 13 run tp @s @e[limit=1,tag=starting_spot,sort=nearest]
function game:general/process

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 4980.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:survival_games
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:survival_games master @s ~ ~ ~ 0.2 1

# Actions on death
gamemode spectator @a[scores={death_tick=0}]
execute in game:custom run tp @a[scores={death_tick=0}] -590 56 -95
title @a[scores={death_tick=0}] title {"text":"你死了!","color":"red","bold":true}
title @a[scores={death_tick=0,respawnable=0}] subtitle [{"text":"你无法在饥饿游戏中复活。","color":"yellow"}]

# Check if a game is over
execute store result score ALIVE data run execute if entity @a[gamemode=adventure]
execute if score GAME tick_elapsed matches 201.. if score ALIVE data matches 1 run function game:general/won

# Class passive
function game:general/passive

# Class ability
function game:abilities/loop
scoreboard players remove @a[tag=!spec,scores={tick_elapsed=1..}] tick_elapsed 1
execute as @a[tag=!spec] run scoreboard players operation @s sec_elapsed = @s tick_elapsed
execute as @a[tag=!spec] run scoreboard players operation @s sec_elapsed /= CONST_20 data
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# Actionbar display
execute as @a[tag=!spec,scores={class=1},gamemode=adventure] run title @s actionbar ["",{"text":"嗜血","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
execute as @a[tag=!spec,scores={class=2},gamemode=adventure] run title @s actionbar ["",{"text":"毒液","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
execute as @a[tag=!spec,scores={class=3},gamemode=adventure] run title @s actionbar ["",{"text":"箭术","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
execute as @a[tag=!spec,scores={class=4},gamemode=adventure] run title @s actionbar ["",{"text":"传送","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
execute as @a[tag=!spec,scores={class=5},gamemode=adventure] run title @s actionbar ["",{"text":"爆破","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
execute as @a[tag=!spec,scores={class=6},gamemode=adventure] run title @s actionbar ["",{"text":"献祭","color":"red","bold":true},"-",{"text":"技能冷却时间：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow","bold":true}," | ",{"text":"当前存活玩家数：","color":"yellow","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"}]
title @a[gamemode=spectator] actionbar {"text":"你现在是旁观者！","bold":true}