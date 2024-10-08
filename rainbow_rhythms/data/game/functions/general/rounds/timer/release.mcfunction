tellraw @a ["[⚔] ",{"text":"本轮游戏已经开始，谁将成为赢家呢......","color":"yellow"}]
title @a title {"text":"GO!","color":"red","bold":true}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1

fill 2491 200 2513 2491 200 2511 minecraft:air
fill 2535 200 2511 2535 200 2513 minecraft:air