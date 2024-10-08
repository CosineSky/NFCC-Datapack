# Zombies
execute as @e[tag=pvp_settings,type=minecraft:zombie] run data merge entity @s {Health:20.0f}
execute as @e[tag=pvp_settings,type=minecraft:zombie] run data merge entity @s {Invulnerable:0b}
data merge entity @e[type=zombie,tag=sword_only,limit=1] {PersistenceRequired:1b,Rotation:[0.0f,0.0f],NoAI:1b,NoGravity:1b,Silent:1b,CustomName:'{"text":"Sword Only","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]}
data merge entity @e[type=zombie,tag=bow_only,limit=1] {PersistenceRequired:1b,Rotation:[45.0f,0.0f],NoAI:1b,NoGravity:1b,Silent:1b,CustomName:'{"text":"Bow Only","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]}
data merge entity @e[type=zombie,tag=sword_and_axe,limit=1] {PersistenceRequired:1b,Rotation:[90.0f,0.0f],NoAI:1b,NoGravity:1b,Silent:1b,CustomName:'{"text":"Sword and Axe","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_axe",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]}
data merge entity @e[type=zombie,tag=full_gears,limit=1] {PersistenceRequired:1b,Rotation:[180.0f,0.0f],NoAI:1b,NoGravity:1b,Silent:1b,CustomName:'{"text":"Full Gears","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]}

# Tracking kills
scoreboard objectives setdisplay sidebar arean_total_kill

# Heal pool
effect give @e[tag=pvp_arean] resistance 5 5 true
execute as @e[tag=pvp_arean] at @s run particle minecraft:happy_villager ~ ~ ~ 2 2 2 0.1 5
execute if score EVENT_STARTED data matches 0 as @e[tag=pvp_arean] at @s run effect give @a[distance=..3] minecraft:saturation 1 5 true
execute if score EVENT_STARTED data matches 0 as @e[tag=pvp_arean] at @s run effect give @a[distance=..3] minecraft:regeneration 1 5 true

execute if score EVENT_STARTED data matches 0 as @a at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:saturation 1 5 true
execute if score EVENT_STARTED data matches 0 as @a at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:regeneration 1 5 true

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 4680.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:casual_pvp
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:casual_pvp master @s ~ ~ ~ 0.2 1