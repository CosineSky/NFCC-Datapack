execute as @e[type=armor_stand,name="a",limit=1] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,name="a",limit=1] at @s unless block ~ ~ ~ air run kill @s
execute as @e[type=armor_stand,name="a",limit=1] at @s run tag @e[type=!armor_stand,tag=!shoot,distance=..3] add die
execute at @e[type=armor_stand,name="a",limit=1] run particle firework ~ ~ ~ 0 0 0 0 5 force
execute as @e[tag=die] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=die] at @s run kill @s
