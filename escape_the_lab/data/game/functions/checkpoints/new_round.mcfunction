# Personal and global announcements.
tellraw @a ["[✈] ",{"selector":"@s","color":"aqua","bold":true},{"text":" 已经完成了第","color":"yellow"},{"score":{"name":"@s","objective":"mountain_round"},"color":"green","bold":true},{"text":"圈竞速，单圈用时","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"},{"text":"！","color":"yellow"}]
title @s title [{"text":"Round ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"mountain_round"},"color":"green","bold":true},{"text":"/3!"}]
title @s subtitle [{"text":"本圈用时: ","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"}]

# Score rewards.
tellraw @s[scores={mountain_round=1},tag=!finished] [{"text":"+150","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（完成第一圈）","color":"gold"}]
tellraw @s[scores={mountain_round=2},tag=!finished] [{"text":"+250","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（完成第二圈）","color":"gold"}]
tellraw @s[scores={mountain_round=3},tag=!finished] [{"text":"+350","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（完成第三圈）","color":"gold"}]
scoreboard players add @s[scores={mountain_round=1},tag=!finished] round_score_mb 150
scoreboard players add @s[scores={mountain_round=2},tag=!finished] round_score_mb 250
scoreboard players add @s[scores={mountain_round=3},tag=!finished] round_score_mb 350

# Checks if a player has finished all 3 rounds.
execute as @s[scores={mountain_round=3..},tag=!finished] run function game:checkpoints/finished

# Resets single-round timer.
scoreboard players set @s tick_elapsed 0
