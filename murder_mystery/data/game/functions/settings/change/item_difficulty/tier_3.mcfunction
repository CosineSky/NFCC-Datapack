tellraw @a ["[",{"text":"⭐","color":"aqua"},"] ",{"selector":"@s","color":"yellow"},{"text":" 将物品难度设置为了"},{"text":"[Hard]","color":"light_purple"},{"text":"!"}]
scoreboard players set @e[tag=bingo_difficulty] data 3

execute as @a at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 1