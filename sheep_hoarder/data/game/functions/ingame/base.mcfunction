# Change the color of sheep in base
execute as @e[tag=sheep_base_red] at @s run execute as @e[type=sheep,distance=..8] at @s if block ~ ~-1 ~ minecraft:red_wool run data merge entity @s {Color:14b}
execute as @e[tag=sheep_base_blue] at @s run execute as @e[type=sheep,distance=..8] at @s if block ~ ~-1 ~ minecraft:blue_wool run data merge entity @s {Color:11b}
execute as @e[tag=sheep_base_green] at @s run execute as @e[type=sheep,distance=..8] at @s if block ~ ~-1 ~ minecraft:lime_wool run data merge entity @s {Color:5b}
execute as @e[tag=sheep_base_yellow] at @s run execute as @e[type=sheep,distance=..8] at @s if block ~ ~-1 ~ minecraft:yellow_wool run data merge entity @s {Color:4b}
execute as @e[type=minecraft:sheep,nbt={Color:14b}] at @s run particle minecraft:dust 1.0 0.0 0.0 1 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 5
execute as @e[type=minecraft:sheep,nbt={Color:11b}] at @s run particle minecraft:dust 0.0 0.0 1.0 1 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 5
execute as @e[type=minecraft:sheep,nbt={Color:5b}] at @s run particle minecraft:dust 0.0 1.0 0.0 1 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 5
execute as @e[type=minecraft:sheep,nbt={Color:4b}] at @s run particle minecraft:dust 1.0 1.0 0.0 1 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 5

# Count sheep
execute as @e[tag=sheep_base_red] at @s store result score @s data run execute if entity @e[type=sheep,nbt={Color:14b},distance=..8]
execute as @e[tag=sheep_base_blue] at @s store result score @s data run execute if entity @e[type=sheep,nbt={Color:11b},distance=..8]
execute as @e[tag=sheep_base_green] at @s store result score @s data run execute if entity @e[type=sheep,nbt={Color:5b},distance=..8]
execute as @e[tag=sheep_base_yellow] at @s store result score @s data run execute if entity @e[type=sheep,nbt={Color:4b},distance=..8]

# Release a sheep
execute as @e[tag=sheep_base_red] at @s run execute as @a[team=red,scores={sheep_absorbed=1},distance=..8] at @s if block ~ ~-1 ~ minecraft:red_wool run function game:ingame/release
execute as @e[tag=sheep_base_blue] at @s run execute as @a[team=blue,scores={sheep_absorbed=1},distance=..8] at @s if block ~ ~-1 ~ minecraft:blue_wool run function game:ingame/release
execute as @e[tag=sheep_base_green] at @s run execute as @a[team=green,scores={sheep_absorbed=1},distance=..8] at @s if block ~ ~-1 ~ minecraft:lime_wool run function game:ingame/release
execute as @e[tag=sheep_base_yellow] at @s run execute as @a[team=yellow,scores={sheep_absorbed=1},distance=..8] at @s if block ~ ~-1 ~ minecraft:yellow_wool run function game:ingame/release