tellraw @s [{"text":"+25","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players add @s round_score_mb 25
advancement revoke @s only game:kill