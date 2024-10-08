tellraw @a [{"text":"[⚠] "},{"text": "地图中央生成了新的随机技能。","bold": true,"color": "yellow"}]
execute at @a run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=skillnow] at @s run tp @s ~ ~-100 ~
tag @e remove skillnow
execute as @e[tag=skillmarker,limit=1,sort=random] at @s run tag @s add skillnow
execute as @e[tag=skillnow] at @s run tp ~ ~100 ~