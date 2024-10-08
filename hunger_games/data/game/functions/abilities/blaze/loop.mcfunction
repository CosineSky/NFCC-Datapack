execute as @e[tag=blaze_ability] at @s run tp @s ^ ^ ^1
execute as @e[tag=blaze_ability] at @s run particle minecraft:dust 1 0.451 0 1.0 ~ ~1 ~ 0.1 0.1 0.1 0.1 5

# execute as @e[tag=blaze_ability] at @s run say hi

execute as @e[tag=blaze_ability] at @s unless block ~ ~1 ~ air run function game:abilities/blaze/remove
execute as @e[tag=blaze_ability] at @s if entity @a[gamemode=adventure,distance=..2,scores={class=1..5}] run function game:abilities/blaze/remove