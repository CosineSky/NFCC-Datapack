# Bridge eggs
execute as @e[type=minecraft:egg] run scoreboard players add @s tick_elapsed 1
execute as @e[type=minecraft:egg] at @s run setblock ~ ~-1 ~ light_gray_wool keep
execute as @e[type=minecraft:egg] at @s run setblock ~1 ~-1 ~ light_gray_wool keep
execute as @e[type=minecraft:egg] at @s run setblock ~-1 ~-1 ~ light_gray_wool keep
execute as @e[type=minecraft:egg] at @s run setblock ~ ~-1 ~1 light_gray_wool keep
execute as @e[type=minecraft:egg] at @s run setblock ~ ~-1 ~-1 light_gray_wool keep
execute as @e[type=minecraft:egg] at @s run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0.01 4
execute as @e[type=minecraft:egg] if score @s tick_elapsed matches 100.. run kill @s

# Ender pearls
execute as @e[type=minecraft:ender_pearl] at @s run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.01 2

# Snowballs
execute as @e[type=minecraft:snowball] at @s run particle minecraft:snowflake ~ ~ ~ 0.01 0.01 0.01 0.01 1