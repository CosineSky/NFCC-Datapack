tellraw @a[team=blue] [{"text":"+350","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=blue] round_score_mb 350

title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle [{"text":"蓝队","color":"blue","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
gamemode spectator @a
schedule function game:general/reset_game 5s