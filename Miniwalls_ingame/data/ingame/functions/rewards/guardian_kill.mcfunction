# Rewards on guardian kills
tellraw @s [{"text":"+90","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（守卫者击杀奖励）","color":"gold"}]
scoreboard players add @s round_score_mb 90

title @s title [{"text":"🗡 ","color":"red"},{"text":"Guardian Kill","color":"yellow"}]
title @s subtitle [{"text":"+90 ","color":"gold"},{"text":"⭐","color":"yellow"}]

advancement revoke @s only ingame:guardian_kill