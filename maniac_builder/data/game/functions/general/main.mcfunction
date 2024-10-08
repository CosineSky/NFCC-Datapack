# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 5020.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:maniac_builder
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:maniac_builder master @s ~ ~ ~ 0.2 1

# Game rounds
function game:general/rounds
scoreboard players remove ROUND_TIME tick_elapsed 1
execute if score ROUND_TIME tick_elapsed matches -300 run scoreboard players add ROUND tick_elapsed 1
execute if score ROUND_TIME tick_elapsed matches -300 run scoreboard players set ROUND_TIME tick_elapsed 1202
scoreboard players operation ROUND_TIME sec_elapsed = ROUND_TIME tick_elapsed
scoreboard players operation ROUND_TIME sec_elapsed /= CONST_20 data

# Display
execute if score ROUND_TIME tick_elapsed matches 1..900 run title @a[tag=!spec] actionbar [{"text":"当前关卡: ","color":"yellow","bold":true},{"score":{"name":"ROUND","objective":"tick_elapsed"},"color":"green"},{"text":"/9","color":"green"},{"text":" | ","color":"white","bold":false},{"text":"总分数: "},{"score":{"name":"*","objective":"total_score_mb"},"color":"green"},"⭐",{"text":" | ","color":"white","bold":false},{"text":"剩余建筑时间: "},{"score":{"name":"ROUND_TIME","objective":"sec_elapsed"},"color":"green"},{"text":"秒 "}]
execute if score ROUND_TIME tick_elapsed matches 901..1200 run title @a[tag=!spec] actionbar [{"text":"当前关卡数: ","color":"yellow","bold":true},{"score":{"name":"ROUND","objective":"tick_elapsed"},"color":"green"},{"text":"/9","color":"green"},{"text":" | ","color":"white","bold":false},{"text":"总分数: "},{"score":{"name":"*","objective":"total_score_mb"},"color":"green"},"⭐",{"text":" | ","color":"white","bold":false},{"text":"请记忆这个建筑！","color":"red","bold":true}]
title @a[tag=spec] actionbar [{"text":"当前关卡: ","color":"yellow","bold":true},{"score":{"name":"ROUND","objective":"tick_elapsed"},"color":"green"},{"text":"/9","color":"green"},{"text":" | ","color":"white","bold":false},{"text":"你现在在旁观者模式！","color":"white","bold":true}]

# Detect if a player falls into void or is stucked in a solid block
execute as @a[tag=!spec] at @s if entity @s[y=105,dy=10] run tellraw @s [{"text":"[❌] "},{"text":"请不要试图登上太空！","color":"red","bold":true}]
execute as @a[tag=!spec] at @s if entity @s[y=105,dy=10] run tp @s @e[limit=1,tag=starting_spot_mb,sort=nearest]
execute as @a[tag=!spec] at @s if blocks ~ ~-10 ~ ~ ~-1 ~ 2070 95 1053 all run tellraw @s [{"text":"[❌] "},{"text":"请不要试图离开个人比赛区域！","color":"red","bold":true}]
execute as @a[tag=!spec] at @s if blocks ~ ~-10 ~ ~ ~-1 ~ 2070 95 1053 all run tp @s @e[limit=1,tag=starting_spot_mb,sort=nearest]
execute as @a[tag=!spec] at @s unless block ~ ~1 ~ #walls unless block ~ ~1 ~ #fences unless block ~ ~1 ~ air run tellraw @s [{"text":"[❌] "},{"text":"你似乎卡进了方块里...","color":"red","bold":true}]
execute as @a[tag=!spec] at @s unless block ~ ~1 ~ #walls unless block ~ ~1 ~ #fences unless block ~ ~1 ~ air run tp @s ~ ~5 ~ 

# Check if a game is over
execute if score ROUND tick_elapsed matches 9 if score ROUND_TIME tick_elapsed matches -198 run function game:general/game_over

# Sneaking settings
execute if score ROUND_TIME tick_elapsed matches 901 run scoreboard players set @a sneak_time -1
execute if score ROUND_TIME tick_elapsed matches 0..900 run function game:general/sneaking

# Remove all items
kill @e[type=item]
execute as @a[tag=!no_jump_boost] at @s run particle firework ~ ~0.2 ~ 0.01 0.01 0.01 0.01 1