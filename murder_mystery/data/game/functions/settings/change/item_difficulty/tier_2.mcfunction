tellraw @a ["[",{"text":"⭐","color":"aqua"},"] ",{"selector":"@s","color":"yellow"},{"text":" 将物品难度设置为了"},{"text":"[Medium]","color":"light_purple"},{"text":"!"}]
scoreboard players set @e[tag=bingo_difficulty] data 2

execute as @a at @s run playsound minecraft:entity.wolf.whine master @s ~ ~ ~ 1 1