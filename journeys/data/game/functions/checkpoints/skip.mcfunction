scoreboard players add @s journey_level 1
execute as @a[gamemode=adventure] run scoreboard players operation @s TMP = @s journey_level
execute as @a[gamemode=adventure] run scoreboard players remove @s TMP 1
scoreboard players add @s journey_fall 1
execute as @e[tag=checkpoint] if score @s journey_level = @a[scores={journey_fall=1},limit=1] TMP run tp @a[scores={journey_fall=1},limit=1] @s
scoreboard players add @s journey_fall 0

tellraw @a [{"text":"[✈] "},{"selector":"@s","color":"green"},{"text":" 使用了一些","color":"white"},{"text":"魔法","color":"light_purple"},{"text":"抵达了第 ","color":"white"},{"score":{"name":"@s","objective":"TMP"},"color":"gold"},{"text":" 个记录点！"}]

title @s title ""
title @s subtitle {"text":"跳关成功！","color":"gold"}
effect give @s minecraft:blindness 1 1 true

advancement revoke @s only game:skip