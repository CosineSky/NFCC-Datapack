# Skeleton passive - Agile
tellraw @s[scores={class=3}] [{"text":"你触发了骷髅被动技能 - ","color":"yellow"},{"text":"敏捷","color":"green","bold":true},"！"]
execute at @s[scores={class=3}] run particle minecraft:firework ~ ~1 ~ 0.25 1 0.25 0.1 15
execute at @s[scores={class=3}] run effect give @s minecraft:speed 5 0 true
execute as @s[scores={class=3}] run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 0.5 1

advancement revoke @s only game:hit_arrow