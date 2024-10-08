tellraw @a[team=red] [{"text":"+140","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=red] round_score_mb 140

execute if score CHOSEN_MAP data matches 101 run fill 1 1 1 -1 1 -1 red_concrete
execute if score CHOSEN_MAP data matches 102 run fill -3 3 48 -1 3 50 red_concrete
execute if score CHOSEN_MAP data matches 103 run fill -1 -3 97 1 -3 99 red_concrete
title @a title {"text":"游戏结束","color":"yellow","bold":true}
title @a subtitle {"text":"红队率先填充了羊毛。","color":"red"}
schedule clear test:win/no_win
function test:game/end_game

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1