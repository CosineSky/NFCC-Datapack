execute as @e[tag=reloadmapmarker] at @s run fill ~-16 ~-16 ~-16 ~15 ~15 ~15 air replace red_wool
execute as @e[tag=reloadmapmarker] at @s run fill ~-16 ~-16 ~-16 ~15 ~15 ~15 air replace lime_wool
execute as @e[tag=reloadmapmarker] at @s run fill ~-16 ~-16 ~-16 ~15 ~15 ~15 air replace blue_wool
execute as @e[tag=reloadmapmarker] at @s run fill ~-16 ~-16 ~-16 ~15 ~15 ~15 air replace yellow_wool
execute as @e[tag=reloadtail] at @s unless entity @e[tag=reloadhead,distance=..10] run execute as @e[tag=reloadmapmarker,tag=!reloadtail] at @s run tp @s ~ ~ ~32
execute as @e[tag=reloadtail] at @s unless entity @e[tag=reloadhead,distance=..10] run function ingame:dowhenload/reloadmap/reloadmaprecursion
execute as @e[tag=reloadtail] at @s if entity @e[tag=reloadhead,distance=..10] run title @a title {"text": "地图恢复完毕！","color": "gold","bold": true}
execute as @e[tag=reloadtail] at @s if entity @e[tag=reloadhead,distance=..10] run kill @e[tag=reloadmapmarker]
