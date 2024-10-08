# Specs detection
execute as @a[gamemode=!spectator] at @s unless block ~ ~-1 ~ minecraft:purple_concrete run scoreboard players set @s sneak_time 0
title @a[gamemode=!spectator,scores={sneak_time=1}] title ""
title @a[gamemode=!spectator,scores={sneak_time=1}] subtitle [{"text":"按住潜行","color":"light_purple","bold":true},{"text":" 2 ","color":"dark_purple","bold":true},{"text":"秒以切换速度提升...","color":"light_purple","bold":true}]

# Announcement
execute as @a[gamemode=!spectator,tag=no_jump_boost] if score @s sneak_time matches 40.. run function game:general/jump_boost/on
execute as @a[gamemode=!spectator,tag=!no_jump_boost] if score @s sneak_time matches 40.. run function game:general/jump_boost/off