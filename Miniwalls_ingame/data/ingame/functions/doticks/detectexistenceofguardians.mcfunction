execute unless entity @e[tag=greenguardian] if score GREEN MWGuardiansExistance matches 1 run tellraw @a [{"text": "绿队","color": "green"},{"text": "的守卫者已阵亡！","color": "gray"}]
execute unless entity @e[tag=greenguardian] if score GREEN MWGuardiansExistance matches 1 run title @a[team=MWgreen] title {"text": "我方守卫者已阵亡！","color": "gray","bold": true}
execute unless entity @e[tag=greenguardian] if score GREEN MWGuardiansExistance matches 1 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1
execute unless entity @e[tag=greenguardian] if score GREEN MWGuardiansExistance matches 1 run scoreboard players set GREEN MWGuardiansExistance 0

execute unless entity @e[tag=blueguardian] if score BLUE MWGuardiansExistance matches 1 run tellraw @a [{"text": "蓝队","color": "blue"},{"text": "的守卫者已阵亡！","color": "gray"}]
execute unless entity @e[tag=blueguardian] if score BLUE MWGuardiansExistance matches 1 run title @a[team=MWblue] title {"text": "我方守卫者已阵亡！","color": "gray","bold": true}
execute unless entity @e[tag=blueguardian] if score BLUE MWGuardiansExistance matches 1 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1
execute unless entity @e[tag=blueguardian] if score BLUE MWGuardiansExistance matches 1 run scoreboard players set BLUE MWGuardiansExistance 0

execute unless entity @e[tag=yellowguardian] if score YELLOW MWGuardiansExistance matches 1 run tellraw @a [{"text": "黄队","color": "yellow"},{"text": "的守卫者已阵亡！","color": "gray"}]
execute unless entity @e[tag=yellowguardian] if score YELLOW MWGuardiansExistance matches 1 run title @a[team=MWyellow] title {"text": "我方守卫者已阵亡！","color": "gray","bold": true}
execute unless entity @e[tag=yellowguardian] if score YELLOW MWGuardiansExistance matches 1 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1
execute unless entity @e[tag=yellowguardian] if score YELLOW MWGuardiansExistance matches 1 run scoreboard players set YELLOW MWGuardiansExistance 0

execute unless entity @e[tag=redguardian] if score RED MWGuardiansExistance matches 1 run tellraw @a [{"text": "红队","color": "red"},{"text": "的守卫者已阵亡！","color": "gray"}]
execute unless entity @e[tag=redguardian] if score RED MWGuardiansExistance matches 1 run title @a[team=MWred] title {"text": "我方守卫者已阵亡！","color": "gray","bold": true}
execute unless entity @e[tag=redguardian] if score RED MWGuardiansExistance matches 1 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1
execute unless entity @e[tag=redguardian] if score RED MWGuardiansExistance matches 1 run scoreboard players set RED MWGuardiansExistance 0