execute as @e[tag=aim] at @s run particle flame ^ ^ ^9 0 0 0 0 10 force
execute as @e[tag=aim] at @s run particle flame ^ ^ ^8 0 0 0 0 10 force
execute as @e[tag=aim2] at @s run particle flame ^ ^ ^4 0 0 0 0 10 force
execute as @e[tag=aim] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=aim] at @s run tp @e[tag=aim2] ^ ^ ^4
execute as @e[tag=aim2] at @s run tp @s ~ ~ ~ ~4 ~