tellraw @a [{"text":"[⚠] "},{"text": "热气球上生成了新的终极技能。","bold": true,"color": "yellow"}]
execute at @a run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=rskillnow] at @s run tp @s ~ ~-153 ~
tag @e remove rskillnow
execute as @e[tag=reinforceskillmarker,limit=1,sort=random] at @s run tag @s add rskillnow
execute as @e[tag=rskillnow] at @s run tp ~ ~153 ~