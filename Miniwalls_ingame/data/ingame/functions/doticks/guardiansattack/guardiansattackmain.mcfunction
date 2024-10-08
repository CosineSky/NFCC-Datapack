execute if score @e[tag=greenguardian,limit=1] MWGuardiansAttackCD matches 0 as @e[tag=greenguardian] at @s run damage @a[gamemode=!spectator,tag=!spec,team=!MWgreen,limit=1,sort=nearest,distance=..10] 4 minecraft:magic
execute if score @e[tag=greenguardian,limit=1] MWGuardiansAttackCD matches 0 run scoreboard players add @e[tag=greenguardian] MWGuardiansAttackCD 50 
execute at @e[tag=greenguardian] if score @e[tag=greenguardian,limit=1] MWGuardiansAttackCD matches 1.. if entity @a[gamemode=!spectator,tag=!spec,team=!MWgreen,distance=..10] run scoreboard players remove @e[tag=greenguardian,limit=1] MWGuardiansAttackCD 1
execute as @e[tag=greenguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWgreen,distance=..10] run tp @e[tag=greenaim] @a[gamemode=!spectator,tag=!spec,team=!MWgreen,distance=..10,sort=nearest,limit=1]
execute as @e[tag=greenguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWgreen,distance=..10] run execute at @e[tag=greenaim] run particle dust 0 1 0.082 3.0 ~ ~1 ~


execute if score @e[tag=redguardian,limit=1] MWGuardiansAttackCD matches 0 as @e[tag=redguardian] at @s run damage @a[gamemode=!spectator,tag=!spec,team=!MWred,limit=1,sort=nearest,distance=..10] 4 minecraft:magic
execute if score @e[tag=redguardian,limit=1] MWGuardiansAttackCD matches 0 run scoreboard players add @e[tag=redguardian] MWGuardiansAttackCD 50 
execute at @e[tag=redguardian] if score @e[tag=redguardian,limit=1] MWGuardiansAttackCD matches 1.. if entity @a[gamemode=!spectator,tag=!spec,team=!MWred,distance=..10] run scoreboard players remove @e[tag=redguardian,limit=1] MWGuardiansAttackCD 1
execute as @e[tag=redguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWred,distance=..10] run tp @e[tag=redaim] @a[gamemode=!spectator,tag=!spec,team=!MWred,distance=..10,sort=nearest,limit=1]
execute as @e[tag=redguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWred,distance=..10] run execute at @e[tag=redaim] run particle dust 1 0 0 3.0 ~ ~1 ~


execute if score @e[tag=yellowguardian,limit=1] MWGuardiansAttackCD matches 0 as @e[tag=yellowguardian] at @s run damage @a[gamemode=!spectator,tag=!spec,team=!MWyellow,limit=1,sort=nearest,distance=..10] 4 minecraft:magic
execute if score @e[tag=yellowguardian,limit=1] MWGuardiansAttackCD matches 0 run scoreboard players add @e[tag=yellowguardian] MWGuardiansAttackCD 50 
execute at @e[tag=yellowguardian] if score @e[tag=yellowguardian,limit=1] MWGuardiansAttackCD matches 1.. if entity @a[gamemode=!spectator,tag=!spec,team=!MWyellow,distance=..10] run scoreboard players remove @e[tag=yellowguardian,limit=1] MWGuardiansAttackCD 1
execute as @e[tag=yellowguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWyellow,distance=..10] run tp @e[tag=yellowaim] @a[gamemode=!spectator,tag=!spec,team=!MWyellow,distance=..10,sort=nearest,limit=1]
execute as @e[tag=yellowguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWyellow,distance=..10] run execute at @e[tag=yellowaim] run particle dust 1 0.949 0 3.0 ~ ~1 ~


execute if score @e[tag=blueguardian,limit=1] MWGuardiansAttackCD matches 0 as @e[tag=blueguardian] at @s run damage @a[gamemode=!spectator,tag=!spec,team=!MWblue,limit=1,sort=nearest,distance=..10] 4 minecraft:magic
execute if score @e[tag=blueguardian,limit=1] MWGuardiansAttackCD matches 0 run scoreboard players add @e[tag=blueguardian] MWGuardiansAttackCD 50 
execute at @e[tag=blueguardian] if score @e[tag=blueguardian,limit=1] MWGuardiansAttackCD matches 1.. if entity @a[gamemode=!spectator,tag=!spec,team=!MWblue,distance=..10] run scoreboard players remove @e[tag=blueguardian,limit=1] MWGuardiansAttackCD 1
execute as @e[tag=blueguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWblue,distance=..10] run tp @e[tag=blueaim] @a[gamemode=!spectator,tag=!spec,team=!MWblue,distance=..10,sort=nearest,limit=1]
execute as @e[tag=blueguardian] at @s if entity @a[gamemode=!spectator,tag=!spec,team=!MWblue,distance=..10] run execute at @e[tag=blueaim] run particle dust 0 0.482 1 3.0 ~ ~1 ~