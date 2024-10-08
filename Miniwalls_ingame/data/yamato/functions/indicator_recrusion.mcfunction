
execute as @e[tag=YamatoReleaser] at @s run particle wax_off ^ ^ ^9 0 0 0 0 10 force
execute as @e[tag=YamatoReleaser] at @s run particle wax_off ^ ^ ^8 0 0 0 0 10 force
execute as @e[tag=YamatoRangeAim2] at @s run particle wax_off ^ ^ ^4 0 0 0 0 10 force
execute as @e[tag=YamatoReleaser] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=YamatoReleaser] at @s run tp @e[tag=YamatoRangeAim2] ^ ^ ^4
execute as @e[tag=YamatoRangeAim2] at @s run tp @s ~ ~ ~ ~4 ~