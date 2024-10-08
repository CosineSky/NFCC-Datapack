# Start of the game
execute if score ROUND_TIME tick_elapsed matches 1400 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"10","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 1300 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 1280 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 1260 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 1240 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 1220 run tellraw @a [{"text":"[♦] "},{"text":"距离游戏开始还有","color":"yellow","bold":true},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]

# Randomly choose a building
execute if score ROUND_TIME tick_elapsed matches 1201 run tag @e remove chosen_building
execute if score ROUND_TIME tick_elapsed matches 1201 if score ROUND tick_elapsed matches 1..9 run tag @e[limit=1,tag=building,tag=easy,tag=!dupe,sort=random] add chosen_building

# Show the building and its info
execute if score ROUND_TIME tick_elapsed matches 1200 run function game:general/buildings/show
execute if score ROUND_TIME tick_elapsed matches 1200 run function game:general/buildings/prompt
execute if score ROUND_TIME tick_elapsed matches 1200 run tellraw @a [{"text":"[✔] "},{"text":"新的建筑已经生成！","color":"green"}]
execute if score ROUND_TIME tick_elapsed matches 1199 run tag @e[limit=1,tag=building,tag=chosen_building] add dupe

# Countdown before reconstruction
execute if score ROUND_TIME tick_elapsed matches 1000 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 1000 run tellraw @a [{"text":"[♦] "},{"text":"距离复原环节开始还有","color":"yellow","bold":true},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 980 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 980 run tellraw @a [{"text":"[♦] "},{"text":"距离复原环节开始还有","color":"yellow","bold":true},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 960 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 960 run tellraw @a [{"text":"[♦] "},{"text":"距离复原环节开始还有","color":"yellow","bold":true},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 940 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 940 run tellraw @a [{"text":"[♦] "},{"text":"距离复原环节开始还有","color":"yellow","bold":true},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 920 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 920 run tellraw @a [{"text":"[♦] "},{"text":"距离复原环节开始还有","color":"yellow","bold":true},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 900 run tellraw @a [{"text":"[✔] "},{"text":"请开始建筑的复原！","color":"green","bold":true}]
execute if score ROUND_TIME tick_elapsed matches 900 run execute as @e[tag=starting_spot_mb] at @s run particle minecraft:explosion ~ ~ ~ 2 2 2 0.01 123
execute if score ROUND_TIME tick_elapsed matches 900 run execute as @e[tag=starting_spot_mb] at @s run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score ROUND_TIME tick_elapsed matches 900 run function game:general/buildings/clear
execute if score ROUND_TIME tick_elapsed matches 900 run function game:general/buildings/materials/base
execute if score ROUND_TIME tick_elapsed matches 900 run effect give @a minecraft:blindness 1 1 true
execute if score ROUND_TIME tick_elapsed matches 1..899 run function game:general/buildings/match
execute if score ROUND_TIME tick_elapsed matches 1..899 run function game:general/buildings/check_finished

# Countdown before timeout
execute if score ROUND_TIME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 100 run tellraw @a [{"text":"[⚠] "},{"text":"复原时间还剩","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 80 run tellraw @a [{"text":"[⚠] "},{"text":"复原时间还剩","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 60 run tellraw @a [{"text":"[⚠] "},{"text":"复原时间还剩","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 40 run tellraw @a [{"text":"[⚠] "},{"text":"复原时间还剩","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches 20 run tellraw @a [{"text":"[⚠] "},{"text":"复原时间还剩","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 run title @a title {"text":"时间到！","color":"red","bold":true}
execute if score ROUND_TIME tick_elapsed matches 0 run title @a subtitle {"text":"正在统计本轮得分...","color":"gold","bold":false}
execute if score ROUND_TIME tick_elapsed matches 0 run tellraw @a [{"text":"[✔] "},{"text":"本轮建筑复原已结束！","color":"yellow","bold":true}]
execute if score ROUND_TIME tick_elapsed matches 0 run execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1
execute if score ROUND_TIME tick_elapsed matches 0 run function game:general/buildings/materials/remove

# Remove 'finished' tag
execute if score ROUND_TIME tick_elapsed matches -1 run tag @a remove finished

# Show personal scores
execute if score ROUND_TIME tick_elapsed matches -100 run title @a[tag=!spec] title {"text":"⭐","color":"green","bold":true}
execute if score ROUND_TIME tick_elapsed matches -100 run title @a[tag=!spec] subtitle [{"text":"你本轮的得分为：","color":"yellow"},{"score":{"name":"*","objective":"round_score_mb"},"color":"gold"}]
execute if score ROUND_TIME tick_elapsed matches -100 run title @a[tag=spec] subtitle {"text":"你在旁观者模式下，无法获得建筑得分。","color":"yellow"}
execute if score ROUND_TIME tick_elapsed matches -100 run scoreboard players set @a round_score_mb 0

# Countdown before next round
execute if score ROUND_TIME tick_elapsed matches -200 run function game:general/buildings/clear
execute if score ROUND_TIME tick_elapsed matches -200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches -200 run tellraw @a [{"text":"[♦] "},{"text":"距离下一轮游戏开始还有","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -220 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches -220 run tellraw @a [{"text":"[♦] "},{"text":"距离下一轮游戏开始还有","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -240 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches -240 run tellraw @a [{"text":"[♦] "},{"text":"距离下一轮游戏开始还有","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -260 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches -260 run tellraw @a [{"text":"[♦] "},{"text":"距离下一轮游戏开始还有","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -280 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score ROUND_TIME tick_elapsed matches -280 run tellraw @a [{"text":"[♦] "},{"text":"距离下一轮游戏开始还有","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]


# Additional
execute if score ROUND_TIME tick_elapsed matches -260 run title @a times 0t 100t 20t
execute if score ROUND_TIME tick_elapsed matches -260 run title @a title {"text":"正在加载建筑...","color":"green","bold":true}
execute if score ROUND_TIME tick_elapsed matches -260 run title @a subtitle ["-[ ",{"text":"■□□□□□□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -265 run title @a subtitle ["-[ ",{"text":"■■□□□□□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -270 run title @a subtitle ["-[ ",{"text":"■■■□□□□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -275 run title @a subtitle ["-[ ",{"text":"■■■■□□□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -280 run title @a subtitle ["-[ ",{"text":"■■■■■□□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -285 run title @a subtitle ["-[ ",{"text":"■■■■■■□□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -290 run title @a subtitle ["-[ ",{"text":"■■■■■■■□","color":"yellow"}," ]-"]
execute if score ROUND_TIME tick_elapsed matches -295 run title @a subtitle ["-[ ",{"text":"■■■■■■■■","color":"yellow"}," ]-"]