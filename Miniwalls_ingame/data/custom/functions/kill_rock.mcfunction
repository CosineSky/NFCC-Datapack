execute at @e[tag=comp,limit=1] run tag @e[distance=..8] add dam
execute at @e[tag=comp,limit=1] run playsound entity.generic.explode player @a ~ ~ ~ 3.0 0.7 0.5
execute at @e[tag=comp,limit=1] run particle flame ~ ~ ~ 0 0 0 0.7 5000 force
execute at @e[tag=comp,limit=1] run particle campfire_cosy_smoke ~ ~ ~ 2 2 2 0.5 3000 force
execute at @e[tag=comp,limit=1] run particle explosion ~ ~ ~ 3 3 3 0.7 200 force
execute at @e[tag=comp,limit=1] run function custom:particlemain
kill @e[tag=comp]
execute as @e[tag=dam] run damage @s 100 minecraft:explosion

execute as @a[tag=dam,scores={MWDeathCount=1},tag=!spec] run tellraw @a [{"selector":"@a[tag=dam,scores={MWDeathCount=1},tag=!spec]"},{"text": "被天星石化了！R.I.P.","color": "gray"}]
tag @a[tag=dam,scores={MWDeathCount=1},tag=!spec] add nogenericdeath
tag @a remove dam

schedule function custom:cleartags 0.05s
schedule function custom:back_time 1.5s