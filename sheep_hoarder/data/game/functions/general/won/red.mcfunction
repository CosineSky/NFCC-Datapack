title @a subtitle [{"text":"红队","color":"red","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
tellraw @a[team=red] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=red] round_score_mb 270