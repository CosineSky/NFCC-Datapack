datapack enable "file/escape_the_lab"
team leave @a[tag=!spec]
execute in multi:mountain run tp @a 139 123 -36
execute in multi:mountain run spawnpoint @a 139 123 -36
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"The Mountain","color":"green","bold":true}
advancement revoke @a only game:enter_escape_the_lab
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:the_mountain players @a

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                     The Mountain","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"在这个快节奏竞速游戏中，你的目标是抵达山顶（3圈）。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"沿途你可能会遭遇各种挑战，例如飞越山崖、躲避蜘蛛......","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"熟练运用各种技巧，超过你的对手吧。","color":"white"}]
tellraw @a [{"text":" ● ","color":"red"},{"text":"注意：你不能跳过存档点，否则进度将无法被记录！","color":"red"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
function hall:fireworks/day
