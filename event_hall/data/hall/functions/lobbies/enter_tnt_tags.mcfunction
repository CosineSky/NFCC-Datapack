datapack enable "file/tnt_tags"
tp @a -546 164 498
spawnpoint @a -546 164 498
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"TNT Tags","color":"green","bold":true}
advancement revoke @a only game:enter_tnt_tags
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:tnt_tags players @a
team leave @a[tag=!spec]

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        丢锅大战","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏中每轮中会有一名或多名玩家被随机选中成为炸弹人。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"炸弹人可击打其它玩家将炸弹传递出去，此时另一玩家成为炸弹人。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"每轮时长固定为45秒，结束时所有炸弹人自爆并被淘汰。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"幸存者拥有一个弹力球，但炸弹人获得+30%的移动速度。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"远离爆炸，尽力存活更久！","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
function hall:fireworks/day