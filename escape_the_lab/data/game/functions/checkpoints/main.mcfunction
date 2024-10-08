# Detect if a runner falls
execute as @a[gamemode=!spectator] run scoreboard players operation @s TMP = @s journey_level
execute as @a[gamemode=!spectator] run scoreboard players remove @s TMP 1
execute as @e[tag=checkpoint] if score @s journey_level = @a[scores={fungus_stick=1},limit=1] TMP run tp @a[scores={fungus_stick=1},limit=1] @s
scoreboard players set @a[gamemode=!spectator,scores={fungus_stick=1}] fungus_stick 0

# Particles
execute as @e[tag=checkpoint,scores={journey_level=..14}] at @s run particle minecraft:dust 0 0.918 1 1 ~ ~ ~ 0.33 1 0.33 0.1 5

# Reach checkpoints
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1,scores={journey_level=2..15}] journey_level = @s journey_level run spawnpoint @s ~ ~ ~ ~
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1,scores={journey_level=2..15}] journey_level = @s journey_level run function game:special_items/modify/nothing
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1] journey_level = @s journey_level run particle minecraft:firework ~ ~1 ~ 0.5 1 0.5 0.1 50
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1] journey_level = @s journey_level run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1] journey_level = @s journey_level run function game:checkpoints/prompt
execute as @a[gamemode=!spectator] at @s if score @e[tag=checkpoint,distance=..2.5,limit=1] journey_level = @s journey_level run scoreboard players add @s journey_level 1

# Special checkpoints
effect give @a[scores={journey_level=14}] slow_falling infinite 0 true
effect clear @a[scores={journey_level=15}] slow_falling

# Start another round
scoreboard players add @a[scores={journey_level=15..}] mountain_round 1
execute as @a[scores={journey_level=15..}] run function game:checkpoints/new_round
scoreboard players set @a[scores={journey_level=15..}] journey_level 2

# Actionbar display
title @a[gamemode=spectator] actionbar {"text":"你现在是旁观者！","bold":true}
execute as @a[gamemode=!spectator] run title @s actionbar ["",{"text":"Welcome to The Mountain!","color":"green"}," | ",{"text":"已完成圈数: ","color":"yellow"},{"score":{"name":"@s","objective":"mountain_round"},"color":"aqua"},{"text":"/3","color":"aqua"}," | ",{"text":"单圈用时: ","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"},{"text":"！","color":"yellow"}]