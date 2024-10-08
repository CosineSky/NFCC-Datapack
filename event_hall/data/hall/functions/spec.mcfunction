# Specs detection
execute as @a[gamemode=!spectator] at @s unless block ~ ~-1 ~ minecraft:white_wool run scoreboard players set @s sneak_time 0
title @a[gamemode=!spectator,scores={sneak_time=1}] title ""
title @a[gamemode=!spectator,scores={sneak_time=1}] subtitle [{"text":"按住潜行","color":"gold","bold":true},{"text":" 5 ","color":"green","bold":true},{"text":"秒以成为旁观者。","color":"gold","bold":true}]

# Announcement
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run tellraw @a [{"text":"[✈] "},{"selector":"@s","color":"aqua"},{"text":" 选择成为一名旁观者！"}]
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. at @s run playsound block.note_block.pling master @a ~ ~ ~ 1 1

# Spec settings
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run tp @s -1980 24 -39 facing -1940 30 -40
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run effect give @s blindness 1 1 true
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run tag @s add spec
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run tag @s add forced_spec
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run team join spec @s
execute as @a[gamemode=!spectator] if score @s sneak_time matches 100.. run gamemode spectator @s