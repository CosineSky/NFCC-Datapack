# Random number generator
# scoreboard players add RNG tick_elapsed 1
# execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# Effects
effect give @a minecraft:saturation 5 5 true
effect give @a minecraft:resistance 5 5 true

# Inventory
item replace entity @a[tag=!spec,gamemode=adventure] hotbar.0 with minecraft:air
execute as @a[tag=!spec] if score GAME tick_elapsed matches ..199 run item replace entity @s hotbar.4 with minecraft:air
execute as @a[tag=!spec] if score GAME tick_elapsed matches 200.. if score @s tick_elapsed matches 300.. run item replace entity @s hotbar.4 with minecraft:honey_bottle{display:{Name:'{"text":"跳关药水","color":"yellow","bold":true,"italic":false}'}} 1
execute as @a[tag=!spec] if score GAME tick_elapsed matches 200.. if score @s tick_elapsed matches ..299 run item replace entity @s hotbar.4 with minecraft:barrier{display:{Name:'{"text":"剩余时间过短，无法跳关","color":"red","bold":true,"italic":false}'}} 1

# Tracking runners' remaining time
scoreboard players remove @a[gamemode=adventure,scores={tick_elapsed=1..}] tick_elapsed 1
gamemode spectator @a[gamemode=adventure,scores={tick_elapsed=0}]
execute as @a run scoreboard players operation @s sec_elapsed = @s tick_elapsed
execute as @a run scoreboard players operation @s sec_elapsed /= CONST_20 data

# Game time
scoreboard players add GAME tick_elapsed 1
execute if score GAME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 100 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒钟后打开！"}]
execute if score GAME tick_elapsed matches 120 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 120 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒钟后打开！"}]
execute if score GAME tick_elapsed matches 140 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 140 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒钟后打开！"}]
execute if score GAME tick_elapsed matches 160 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 160 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒钟后打开！"}]
execute if score GAME tick_elapsed matches 180 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 180 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒钟后打开！"}]
execute if score GAME tick_elapsed matches 200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 200 run tellraw @a [{"text":"大门已打开！开始你的跑酷之旅吧！","color":"yellow"}]
execute if score GAME tick_elapsed matches 200 run fill 550 233 559 552 232 559 minecraft:air

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 5180.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:the_journeys
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:the_journeys master @s ~ ~ ~ 0.2 1

# Check if a game is over
execute unless entity @a[gamemode=adventure,scores={sec_elapsed=1..}] run function game:general/timeout
