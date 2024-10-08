execute if score CHOSEN_MAP data matches 101 if blocks -1 1 -1 1 1 1 25 1 -1 all run function test:win/blue_win
execute if score CHOSEN_MAP data matches 101 if blocks -1 1 -1 1 1 1 -27 1 -1 all run function test:win/red_win
execute if score CHOSEN_MAP data matches 102 if blocks -3 3 48 -1 3 50 25 1 -1 all run function test:win/blue_win
execute if score CHOSEN_MAP data matches 102 if blocks -3 3 48 -1 3 50 -27 1 -1 all run function test:win/red_win
execute if score CHOSEN_MAP data matches 103 if blocks -1 -3 97 1 -3 99 25 1 -1 all run function test:win/blue_win
execute if score CHOSEN_MAP data matches 103 if blocks -1 -3 97 1 -3 99 -27 1 -1 all run function test:win/red_win


# Uplifter in map Abstract Lava
execute as @e[type=ender_pearl] at @s run function test:property/lifter


# Launchpad in map Tic-Tac-Toe
execute if score CHOSEN_MAP data matches 102 as @a[gamemode=adventure] at @s run execute if block ~ ~-1 ~ slime_block run effect give @s jump_boost 1 5 true
execute if score CHOSEN_MAP data matches 102 run scoreboard players set @a[tag=!slimeJump] tick_elapsed 0
execute if score CHOSEN_MAP data matches 102 run scoreboard players add @a[tag=slimeJump] tick_elapsed 1
execute if score CHOSEN_MAP data matches 102 run effect clear @a[tag=!slimeJump] levitation
execute if score CHOSEN_MAP data matches 102 run effect give @a[tag=slimeJump] levitation 1 33 true
execute if score CHOSEN_MAP data matches 102 as @a[gamemode=!spectator] at @s run execute if entity @s[nbt={OnGround:1b}] if block ~ ~-1 ~ slime_block run tag @s add slimeJump
execute as @a[scores={tick_elapsed=1}] at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1 1
execute as @a[scores={tick_elapsed=1}] at @s run particle happy_villager ~ ~ ~ 0.75 0.01 0.75 0.01 33
tag @a[scores={tick_elapsed=3}] remove slimeJump


# Guardian rotation in map Professor's Chamber
execute as @e[type=minecraft:elder_guardian] at @s run tp @s ~ ~ ~ facing 0 -2 98


# Preventing tools thrown from not working
execute as @e[type=item] run data merge entity @s {Item:{tag:{HideFlags:24,CanDestroy:["minecraft:white_wool","minecraft:blue_wool","minecraft:red_wool","minecraft:cobweb"],CanPlaceOn:["minecraft:sea_lantern","minecraft:crying_obsidian","minecraft:glowstone"]}}}


# Clearing inventory upon death
clear @a[scores={death_tick=1}]


# Death detection
function test:game/kill


