# Bed-breaking detection
clear @a minecraft:red_bed
clear @a minecraft:blue_bed
clear @a minecraft:lime_bed
clear @a minecraft:yellow_bed
execute as @a[scores={red_bed_broken=1..}] run function game:ingame/beds/red_broken
execute as @a[scores={blue_bed_broken=1..}] run function game:ingame/beds/blue_broken
execute as @a[scores={green_bed_broken=1..}] run function game:ingame/beds/green_broken
execute as @a[scores={yellow_bed_broken=1..}] run function game:ingame/beds/yellow_broken

# Check the existence of beds
execute as @e[tag=red_bed] at @s if block ~ ~ ~ minecraft:red_bed run scoreboard players set 红色床：§a✔ game_status 4
execute as @e[tag=red_bed] at @s if block ~ ~ ~ minecraft:red_bed run scoreboard players reset 红色床：§c❌ game_status
execute as @e[tag=red_bed] at @s unless block ~ ~ ~ minecraft:red_bed run scoreboard players set 红色床：§c❌ game_status 4
execute as @e[tag=red_bed] at @s unless block ~ ~ ~ minecraft:red_bed run scoreboard players reset 红色床：§a✔ game_status
execute as @e[tag=blue_bed] at @s if block ~ ~ ~ minecraft:blue_bed run scoreboard players set 蓝色床：§a✔ game_status 3
execute as @e[tag=blue_bed] at @s if block ~ ~ ~ minecraft:blue_bed run scoreboard players reset 蓝色床：§c❌ game_status
execute as @e[tag=blue_bed] at @s unless block ~ ~ ~ minecraft:blue_bed run scoreboard players set 蓝色床：§c❌ game_status 3
execute as @e[tag=blue_bed] at @s unless block ~ ~ ~ minecraft:blue_bed run scoreboard players reset 蓝色床：§a✔ game_status
execute as @e[tag=green_bed] at @s if block ~ ~ ~ minecraft:lime_bed run scoreboard players set 绿色床：§a✔ game_status 2
execute as @e[tag=green_bed] at @s if block ~ ~ ~ minecraft:lime_bed run scoreboard players reset 绿色床：§c❌ game_status
execute as @e[tag=green_bed] at @s unless block ~ ~ ~ minecraft:lime_bed run scoreboard players set 绿色床：§c❌ game_status 2
execute as @e[tag=green_bed] at @s unless block ~ ~ ~ minecraft:lime_bed run scoreboard players reset 绿色床：§a✔ game_status
execute as @e[tag=yellow_bed] at @s if block ~ ~ ~ minecraft:yellow_bed run scoreboard players set 黄色床：§a✔ game_status 1
execute as @e[tag=yellow_bed] at @s if block ~ ~ ~ minecraft:yellow_bed run scoreboard players reset 黄色床：§c❌ game_status
execute as @e[tag=yellow_bed] at @s unless block ~ ~ ~ minecraft:yellow_bed run scoreboard players set 黄色床：§c❌ game_status 1
execute as @e[tag=yellow_bed] at @s unless block ~ ~ ~ minecraft:yellow_bed run scoreboard players reset 黄色床：§a✔ game_status