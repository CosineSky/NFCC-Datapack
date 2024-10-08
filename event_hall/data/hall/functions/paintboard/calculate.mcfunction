execute at @s if block ~ ~-1 ~ minecraft:red_wool run scoreboard players add GAME_RED data 1
execute at @s if block ~ ~-1 ~ minecraft:orange_wool run scoreboard players add GAME_ORANGE data 1
execute at @s if block ~ ~-1 ~ minecraft:yellow_wool run scoreboard players add GAME_YELLOW data 1
execute at @s if block ~ ~-1 ~ minecraft:lime_wool run scoreboard players add GAME_GREEN data 1
execute at @s if block ~ ~-1 ~ minecraft:green_wool run scoreboard players add GAME_DARK_GREEN data 1
execute at @s if block ~ ~-1 ~ minecraft:light_blue_wool run scoreboard players add GAME_AQUA data 1
execute at @s if block ~ ~-1 ~ minecraft:blue_wool run scoreboard players add GAME_BLUE data 1
execute at @s if block ~ ~-1 ~ minecraft:purple_wool run scoreboard players add GAME_DARK_PURPLE data 1
execute at @s if block ~ ~-1 ~ minecraft:magenta_wool run scoreboard players add GAME_LIGHT_PURPLE data 1
execute at @s if block ~ ~-1 ~ minecraft:brown_wool run scoreboard players add GAME_BROWN data 1
execute at @s if block ~ ~-1 ~ minecraft:cyan_wool run scoreboard players add GAME_CYAN data 1
tp @s ~1 ~ ~
execute at @s unless entity @e[tag=board_end,distance=..1] run execute as @s run function hall:paintboard/calculate

# RED, ORANGE, YELLOW, GREEN, DARK_GREEN
# AQUA, BLUE, DARK_PURPLE, LIGHT_PURPLE, BROWN, CYAN