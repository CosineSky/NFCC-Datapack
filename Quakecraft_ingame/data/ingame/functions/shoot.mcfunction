execute as @e[type=armor_stand,name="a",limit=1] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,name="a",limit=1] at @s unless block ~ ~1 ~ air run kill @s
execute as @e[type=armor_stand,name="a",limit=1] at @s run tag @e[type=player,tag=!shoot,tag=!spec,scores={tick_elapsed=60..},distance=..1] add die
execute at @e[type=armor_stand,name="a",limit=1] run particle firework ~ ~1 ~ 0 0 0 0 5 force
execute as @e[tag=die] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 5 force

execute as @e[tag=die] at @s run particle minecraft:flash ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[tag=die] at @s run tp @e[type=marker,name="qc",sort=random,limit=1,distance=..500]
execute as @e[tag=die] at @s run effect give @s blindness 2 1
execute as @e[tag=die] at @s run effect give @s glowing 3 2
execute as @e[tag=die] at @s run effect give @s slowness 1 127
execute as @e[tag=die] at @s run effect give @s invisibility 3 1
execute as @e[tag=die] at @s run scoreboard players set @s tick_elapsed 0
execute as @e[tag=die] at @s run title @s times 10 60 10
execute as @e[tag=die] at @s run title @s title [{"text": "Killed by ","color": "green"},{"selector":"@a[tag=shoot]","color":"gold"}]
execute as @e[tag=die] at @s run title @s reset

execute as @e[tag=die] run scoreboard players add @a[tag=shoot] round_score_mb 12
execute as @e[tag=die] run tellraw @a[tag=shoot] [{"text":"+12","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute as @e[tag=die] run execute as @a[tag=shoot] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2

execute if entity @e[tag=die] run scoreboard players set @a[tag=shoot] qc_ifaddkillcount 1
execute if score @a[tag=shoot,limit=1] qc_ifaddkillcount matches 1 run scoreboard players add @a[tag=shoot,limit=1] qc_killcount 1
execute if score @a[tag=shoot,limit=1] qc_ifaddkillcount matches 1 run tellraw @a [{"text": "[⚔]"},{"selector":"@a[tag=die]","color": "gold"},{"text": " was shot by ","color": "green"},{"selector":"@a[tag=shoot]","color": "gold"}]
execute if score @a[tag=shoot,limit=1] qc_ifaddkillcount matches 1 run scoreboard players set @a[tag=shoot,limit=1] qc_ifaddkillcount 0
execute as @a[tag=die] run tag @s remove die

