# Zombie passive - Undead
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 run tellraw @s [{"text":"你触发了僵尸被动技能 - ","color":"yellow"},{"text":"亡灵","color":"green","bold":true},"！"]
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run particle minecraft:heart ~ ~1 ~ 0.25 1 0.25 0.1 10
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run effect give @s minecraft:regeneration 1 2 true
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 as @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 1

execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run effect give @a[distance=..3,tag=!spec] wither 1 2 true
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run effect clear @s wither
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run title @a[distance=..3,tag=!spec] title ""
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run title @a[distance=..3,tag=!spec] subtitle ["",{"selector":"@s","color":"green","bold":true},{"text":" 的技能","color":"yellow"},{"text":"“亡灵”","color":"gold"},{"text":"吸取了你2生命值！","color":"yellow"}]
execute if score @s class matches 1 if score RNG tick_elapsed matches 1..8 at @s run title @s subtitle ""

advancement revoke @s only game:hit