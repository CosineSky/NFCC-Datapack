execute as @e[tag=laserrelease] at @s run tp @s ^ ^ ^1
execute as @e[tag=laserrelease] at @s run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=laserrelease] at @e[tag=laserrelease] run tag @e[type=player,distance=..2,tag=!laserreleaser,tag=!laserrelease,limit=1] add hurtbylaser
execute as @e[tag=laserrelease] at @e[tag=laserrelease] run damage @e[type=player,distance=..2,tag=!laserreleaser,tag=!laserrelease,limit=1] 10 magic
