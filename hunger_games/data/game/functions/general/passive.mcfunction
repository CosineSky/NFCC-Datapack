# Spider passive - Weavor
scoreboard players add @e[tag=spider_web,type=marker] tick_elapsed 1
execute as @e[tag=spider_web,type=marker] at @s if score @s tick_elapsed matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace minecraft:air
execute as @e[tag=spider_web,type=marker] at @s if score @s tick_elapsed matches 41 run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobweb
execute as @e[tag=spider_web,type=marker] at @s if score @s tick_elapsed matches 41 run kill @s

# Enderman passive - Illusion
scoreboard players add @e[tag=enderman_marker,type=marker] tick_elapsed 1
execute as @e[tag=enderman_marker,type=marker] at @s run particle enchant ~ ~1 ~ 0.2 1.2 0.2 0.01 10
execute as @e[tag=enderman_marker,type=marker] if score @s tick_elapsed matches 100 run tp @a[sort=nearest,limit=1,scores={tick_elapsed=195..205,class=4}] @s
execute as @e[tag=enderman_marker,type=marker] if score @s tick_elapsed matches 100 at @s run playsound entity.enderman.teleport master @a[distance=..4] ~ ~ ~ 1 1
execute as @e[tag=enderman_marker,type=marker] if score @s tick_elapsed matches 100 at @s run particle portal ~ ~1 ~ 0.25 1.5 0.25 0.01 100
execute as @e[tag=enderman_marker,type=marker] if score @s tick_elapsed matches 100 run kill @s

# Creeper passive - Rage
execute as @a[scores={class=5},gamemode=adventure] at @s unless entity @e[tag=creeper_tracker,distance=..1.45] run summon minecraft:marker ~ ~ ~ {Tags:["creeper_tracker"]}
execute as @e[tag=creeper_tracker] at @s run tp @s @a[scores={class=5},gamemode=adventure,limit=1,sort=nearest]
execute as @e[tag=creeper_tracker] at @s unless entity @a[scores={class=5},distance=..1.45,gamemode=adventure] run effect give @a[distance=..3.5] instant_damage 1 0 true
execute as @e[tag=creeper_tracker] at @s unless entity @a[scores={class=5},distance=..1.45,gamemode=adventure] run execute as @a[distance=..4] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1
execute as @e[tag=creeper_tracker] at @s unless entity @a[scores={class=5},distance=..1.45,gamemode=adventure] run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute as @e[tag=creeper_tracker] at @s unless entity @a[scores={class=5},distance=..1.45,gamemode=adventure] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 66
execute as @e[tag=creeper_tracker] at @s unless entity @a[scores={class=5},distance=..1.45,gamemode=adventure] run kill @s

# Blaze passive - Resurrection
execute as @a[scores={class=6,health=..8,respawnable=1}] run tellraw @s [{"text":"你触发了烈焰人被动技能 - ","color":"yellow"},{"text":"涅槃","color":"green","bold":true},"！"]
execute as @a[scores={class=6,health=..8,respawnable=1}] run tellraw @a ["[⚔] ", {"selector":"@s"},{"text":"释放了限定技——","color":"yellow"},{"text":"涅槃","color":"green","bold":true},{"text":"，并重获新生！","color":"yellow"}]
execute as @a[scores={class=6,health=..8,respawnable=1}] run effect give @s regeneration 1 5 true
execute as @a[scores={class=6,health=..8,respawnable=1}] at @s run playsound entity.illusioner.prepare_mirror master @a[distance=..4] ~ ~ ~ 1 1 
execute as @a[scores={class=6,health=..8,respawnable=1}] at @s run particle minecraft:flame ~ ~1 ~ 0.25 1.75 0.25 0.01 100
execute as @a[scores={class=6,health=..8,respawnable=1}] at @s run particle minecraft:soul ~ ~ ~ 1 1 1 0.01 33
execute as @a[scores={class=6,health=..8,respawnable=1}] at @s run scoreboard players set @s respawnable 0

# Blaze passive - Kindleheart
effect give @a[scores={class=6,respawnable=0}] minecraft:weakness 2 0 true
effect clear @a[scores={class=6,respawnable=1}] minecraft:weakness