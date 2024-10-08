tellraw @a[team=blue] [{"text":"+140","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=blue] round_score_mb 140

execute if score CHOSEN_MAP data matches 101 run fill 1 1 1 -1 1 -1 blue_concrete
execute if score CHOSEN_MAP data matches 102 run fill -3 3 48 -1 3 50 blue_concrete
execute if score CHOSEN_MAP data matches 103 run fill -1 -3 97 1 -3 99 blue_concrete
title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle {"text":"蓝队率先填充了羊毛。","color":"blue"}
schedule clear test:win/no_win
function test:game/end_game

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1