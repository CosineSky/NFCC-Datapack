title @a subtitle [{"text":"蓝队","color":"blue","bold":true},{"text":"是最后的赢家。","color":"gold","bold":false}]
tellraw @a[team=blue] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=blue] round_score_mb 270