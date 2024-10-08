title @a subtitle [{"text":"黄队","color":"yellow","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
tellraw @a[team=yellow] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=yellow] round_score_mb 270