title @a title {"text":"Good Luck!","color":"green"}

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[⭐] "},{"text":"战斗已经开始，祝你好运！","color":"green","bold":true}]