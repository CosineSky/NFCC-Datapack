execute if entity @a[scores={MWDeathCount=1},tag=!spec,tag=!nogenericdeath] unless entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text": "死了。R.I.P.","color": "gray"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec,tag=!nogenericdeath] if entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"selector":"@a[scores={MWDeathCount=1},tag=!spec,tag=!nogenericdeath]"},{"text": "死于与","color": "gray"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text": "的战斗。R.I.P.","color": "gray"}]
execute as @a[scores={MWDeathCount=1},tag=!spec,tag=nogenericdeath] run tag @s remove nogenericdeath


execute if entity @a[scores={MWDeathCount=1},tag=!spec] run scoreboard players set @a[scores={MWDeathCount=1},tag=!spec] MWDeathTimer 100
execute if entity @a[scores={MWDeathTimer=100},tag=!spec] as @a[scores={MWDeathTimer=100},tag=!spec] run title @s title {"text": "你死了！","color": "red","bold": true}
execute if entity @a[scores={MWDeathTimer=100},tag=!spec] as @a[scores={MWDeathTimer=100},tag=!spec] run title @s subtitle {"text": "若你的守卫者还活着，你将在5秒后复活...","color": "yellow","bold": true}
execute if entity @a[scores={MWDeathTimer=100},tag=!spec] as @a[scores={MWDeathTimer=100},tag=!spec] run gamemode spectator @s

execute if entity @a[team=MWred,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWred,scores={MWDeathTimer=1},tag=!spec] if score RED MWGuardiansExistance matches 1 run gamemode adventure @s
execute if entity @a[team=MWblue,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWblue,scores={MWDeathTimer=1},tag=!spec] if score BLUE MWGuardiansExistance matches 1 run gamemode adventure @s
execute if entity @a[team=MWyellow,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWyellow,scores={MWDeathTimer=1},tag=!spec] if score YELLOW MWGuardiansExistance matches 1 run gamemode adventure @s
execute if entity @a[team=MWgreen,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWgreen,scores={MWDeathTimer=1},tag=!spec] if score GREEN MWGuardiansExistance matches 1 run gamemode adventure @s

execute if score RED MWGuardiansExistance matches 1 if entity @a[team=MWred,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWred,scores={MWDeathTimer=1},tag=!spec] run tp @s @e[tag=redsp,limit=1]
execute if score BLUE MWGuardiansExistance matches 1 if entity @a[team=MWblue,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWblue,scores={MWDeathTimer=1},tag=!spec] run tp @s @e[tag=bluesp,limit=1]
execute if score YELLOW MWGuardiansExistance matches 1 if entity @a[team=MWyellow,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWyellow,scores={MWDeathTimer=1},tag=!spec] run tp @s @e[tag=yellowsp,limit=1]
execute if score GREEN MWGuardiansExistance matches 1 if entity @a[team=MWgreen,scores={MWDeathTimer=1},tag=!spec] as @a[team=MWgreen,scores={MWDeathTimer=1},tag=!spec] run tp @s @e[tag=greensp,limit=1]
execute as @a[tag=!spec] run execute if score @s MWDeathTimer matches 1.. run scoreboard players remove @s MWDeathTimer 1

# Rewards upon kills
tellraw @a[scores={MWKillCount=1..}] [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
scoreboard players add @a[scores={MWKillCount=1..}] round_score_mb 20

scoreboard players set @a[scores={MWDeathCount=1},tag=!spec] MWDeathCount 0
scoreboard players set @a[scores={MWKillCount=1..},tag=!spec] MWKillCount 0

execute if entity @e[tag=killer] as @e[tag=killer] run tag @s remove killer