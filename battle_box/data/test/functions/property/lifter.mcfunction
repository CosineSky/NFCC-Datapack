execute as @e[type=ender_pearl] at @s run tag @p add fly
execute as @a[tag=fly] at @s if block ~ ~ ~ lava run tp ~ ~2 ~
execute as @a[tag=fly] at @s run effect give @s levitation 1 5 true
tag @a remove fly
kill @e[type=ender_pearl]