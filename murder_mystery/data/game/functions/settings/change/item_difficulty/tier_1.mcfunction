tellraw @a ["[",{"text":"⭐","color":"aqua"},"] ",{"selector":"@s","color":"yellow"},{"text":" 将物品难度设置为了"},{"text":"[Easy]","color":"red"},{"text":"!"}]
scoreboard players set @e[tag=bingo_difficulty] data 1

execute as @a at @s run playsound minecraft:entity.cat.ambient master @s ~ ~ ~ 1 1