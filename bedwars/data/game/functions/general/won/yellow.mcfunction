tellraw @a[team=yellow] [{"text":"+350","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=yellow] round_score_mb 350

title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle [{"text":"黄队","color":"yellow","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
gamemode spectator @a
schedule function game:general/reset_game 5s