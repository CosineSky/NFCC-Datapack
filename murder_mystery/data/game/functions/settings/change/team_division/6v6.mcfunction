tellraw @a ["[",{"text":"⭐","color":"aqua"},"] ",{"selector":"@s","color":"yellow"},{"text":" 将组队模式设置为了"},{"text":"[Two Teams]","color":"red"},{"text":"!"}]
scoreboard players set @e[tag=bingo_settings] data 1

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1