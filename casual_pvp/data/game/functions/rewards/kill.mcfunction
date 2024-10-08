tellraw @s [{"text":"+25","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
scoreboard players add @s total_score_hub 25
scoreboard players add @s round_score_mb 25
advancement revoke @s only game:kill