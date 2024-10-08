
execute if score MWDURINGRICKROLL data matches 1 if score MWBGM data matches 4240 run scoreboard players set MWBGM data 0
execute if score MWDURINGRICKROLL data matches 1 if score MWBGM data matches 0 run scoreboard players set MWDURINGRICKROLL data 0

execute if score MWBGM data matches 5360 run scoreboard players set MWBGM data 0
execute if score MWBGM data matches 0 run stopsound @a master
execute if score MWBGM data matches 0 run execute as @a at @s run playsound minecraft:miniwalls master @s ~ ~ ~ 0.3 1 1

scoreboard players add MWBGM data 1
