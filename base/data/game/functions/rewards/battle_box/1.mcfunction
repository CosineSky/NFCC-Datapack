datapack enable "file/battle_box"
tp @a -3 41 0
spawnpoint @a 0 19 0
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Battle Box","color":"green","bold":true}
advancement revoke @a only game:enter_battle_box
scoreboard players set @a ready 0
scoreboard players set @a map_selector 0
scoreboard players set CHOSEN_MAP data 101

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        战盒","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"两队伍间的正面对决，率先用羊毛填充中间区域的一方获胜。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏开始前，每人可选择一种补给；选择后无法更换。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏时长为两分钟，若超时而没有队伍填满羊毛则平局。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon