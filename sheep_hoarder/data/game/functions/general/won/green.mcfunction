title @a subtitle [{"text":"绿队","color":"green","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
tellraw @a[team=green] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=green] round_score_mb 270