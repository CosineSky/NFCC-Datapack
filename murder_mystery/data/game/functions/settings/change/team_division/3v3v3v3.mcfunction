tellraw @a ["[",{"text":"⭐","color":"aqua"},"] ",{"selector":"@s","color":"yellow"},{"text":" 将组队模式设置为了"},{"text":"[Four Teams]","color":"dark_purple"},{"text":"!"}]
scoreboard players set @e[tag=bingo_settings] data 3

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1