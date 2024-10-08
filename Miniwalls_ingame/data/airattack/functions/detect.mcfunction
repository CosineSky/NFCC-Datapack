
execute if entity @e[type=item,nbt={Item:{tag:{AirAttackRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{AirAttackRelease:1b}}}] run tag @p add airattackreleaser
execute if entity @e[type=item,nbt={Item:{tag:{AirAttackRelease:1b}}}] as @e[type=item,nbt={Item:{tag:{AirAttackRelease:1b}}}] run kill @s
execute at @a[tag=airattackreleaser] run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1 1
scoreboard players set @a[tag=airattackreleaser] MWAirAttack 1
execute as @a[tag=airattackreleaser] at @s run tp @s ~ ~3 ~
execute as @a[tag=airattackreleaser] at @s run effect give @s levitation 1 30

tag @a remove airattackreleaser



execute as @a[scores={MWAirAttack=1}] at @s unless block ~ ~-1 ~ air run playsound entity.generic.explode player @a ~ ~ ~ 1 1 0.5
execute as @a[scores={MWAirAttack=1}] at @s unless block ~ ~-1 ~ air run particle explosion ~ ~ ~ 1 1 1 0 100 force
tag @a[scores={MWAirAttack=1}] add re
execute as @a[scores={MWAirAttack=1}] at @s unless block ~ ~-1 ~ air run execute as @e[distance=..6,tag=!re] run tag @s add hurtbyat
execute as @a[scores={MWAirAttack=1}] at @s unless block ~ ~-1 ~ air run execute as @e[distance=..6,tag=!re] run damage @s 40 explosion

execute as @a[tag=hurtbyat,scores={MWDeathCount=1},tag=!spec] run tellraw @a [{"selector":"@a[tag=hurtbyat,scores={MWDeathCount=1},tag=!spec]"},{"text": "死于","color": "gray"},{"selector":"@a[tag=re,tag=!spec]"},{"text": "发动的Air Attack。R.I.P.","color": "gray"}]
tag @a[tag=hurtbyat,scores={MWDeathCount=1},tag=!spec] add nogenericdeath

execute as @a[tag=hurtbyat,scores={MWDeathCount=1},tag=!spec] run tellraw @a[tag=re,tag=!spec] [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute as @a[tag=hurtbyat,scores={MWDeathCount=1},tag=!spec] run scoreboard players add @a[tag=re] round_score_mb 20

tag @a remove hurtbyat
tag @a[scores={MWAirAttack=1}] remove re
execute as @a[scores={MWAirAttack=1}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s MWAirAttack 0