# Game process
execute if score GAME tick_elapsed matches 1 run effect give @a minecraft:slowness 5 5 true
execute if score GAME tick_elapsed matches 1 run effect give @a minecraft:blindness 5 1 true
execute if score GAME tick_elapsed matches 1 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1 run tellraw @a [{"text":"夺羊之战将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒后开始！"}]
execute if score GAME tick_elapsed matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 20 run tellraw @a [{"text":"夺羊之战将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒后开始！"}]
execute if score GAME tick_elapsed matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 40 run tellraw @a [{"text":"夺羊之战将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒后开始！"}]
execute if score GAME tick_elapsed matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 60 run tellraw @a [{"text":"夺羊之战将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒后开始！"}]
execute if score GAME tick_elapsed matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 80 run tellraw @a [{"text":"夺羊之战将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒后开始！"}]
execute if score GAME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 100 run tellraw @a {"text":"战斗已开始，祝你好运！","color":"yellow"}

execute if score GAME tick_elapsed matches 120 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 120 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"分钟！"}]
execute if score GAME tick_elapsed matches 1320 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 1320 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"分钟！"}]
execute if score GAME tick_elapsed matches 2520 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 2520 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"分钟！"}]
execute if score GAME tick_elapsed matches 3720 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 3720 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟！"}]

execute if score GAME tick_elapsed matches 4820 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 4820 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒！"}]
execute if score GAME tick_elapsed matches 4840 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 4840 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒！"}]
execute if score GAME tick_elapsed matches 4860 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 4860 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒！"}]
execute if score GAME tick_elapsed matches 4880 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 4880 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒！"}]
execute if score GAME tick_elapsed matches 4900 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 4900 run tellraw @a [{"text":"距离游戏结束还剩：","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒！"}]
execute if score GAME tick_elapsed matches 4920.. run function game:general/timeout