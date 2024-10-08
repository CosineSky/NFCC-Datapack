execute as @e[tag=corner_scanner] at @s run fill ~ ~ ~ ~ ~70 ~264 minecraft:air replace #game:breakable
execute as @e[tag=corner_scanner] at @s run tp @s ~1 ~ ~
execute as @e[tag=corner_end] at @s unless entity @e[tag=corner_scanner,distance=..1] run function game:general/recover_map