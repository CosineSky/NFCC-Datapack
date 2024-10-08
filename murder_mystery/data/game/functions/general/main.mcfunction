# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 11220.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:murder_mystery
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:murder_mystery master @s ~ ~ ~ 0.2 1

# Display
title @a[gamemode=!spectator] actionbar [{"text":"","color":"green"},{"text":"Time Elapsed: ","color":"yellow"},{"score":{"name":"GAME","objective":"min_elapsed"}},"m",{"score":{"name":"GAME","objective":"sec_elapsed"}},"s",{"text":" | ","color":"white"},{"text":"Welcome to NFCC Bingo!","color":"yellow"},{"text":" [BETA]","color":"red"}]
title @a[gamemode=spectator] actionbar {"text":"你现在是旁观者！","bold":true}

# Game process
scoreboard players add GAME tick_elapsed 1
scoreboard players operation GAME sec_elapsed = GAME tick_elapsed
scoreboard players operation GAME sec_elapsed %= CONST_1200 data
scoreboard players operation GAME sec_elapsed /= CONST_20 data
scoreboard players operation GAME min_elapsed = GAME tick_elapsed
scoreboard players operation GAME min_elapsed /= CONST_1200 data

# Vote end
execute unless entity @a[scores={bingo_vote_end=0}] run function game:general/reset_game

# Check if any team wins
function game:general/bingo/loop