execute as @a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator] on attacker run tag @s add attk

execute if entity @a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator] if entity @e[tag=attk] run tellraw @a [{"selector":"@a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator]"},{"text": "因为","color": "gray"},{"selector":"@e[tag=attk,tag=!spec]"},{"text": "掉入了虚空。R.I.P.","color": "gray"}]

execute if entity @a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator] unless entity @e[tag=attk] run tellraw @a [{"selector":"@a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator]"},{"text": "掉入虚空。R.I.P.","color": "gray"}]

tag @a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator] add nogenericdeath

kill @a[x=-4672.5,y=0,z=4327.5,dx=200,dy=-100,dz=200,tag=!spec,gamemode=!spectator]

# Rewards upon void kills
tellraw @a[tag=attk] [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
scoreboard players add @a[tag=attk] round_score_mb 20

tag @e remove attk
