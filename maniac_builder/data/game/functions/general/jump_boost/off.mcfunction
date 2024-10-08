tellraw @s [{"text":"[✔] "},{"text":"已取消跳跃提升效果！","color":"green","bold":true}]
effect clear @s jump_boost
tag @s add no_jump_boost
scoreboard players set @s sneak_time -100
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.5