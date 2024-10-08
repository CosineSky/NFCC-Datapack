tellraw @s [{"text":"[✔] "},{"text":"已恢复跳跃提升效果！","color":"green","bold":true}]
effect give @s jump_boost infinite 2 true
tag @s remove no_jump_boost
scoreboard players set @s sneak_time -100
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1