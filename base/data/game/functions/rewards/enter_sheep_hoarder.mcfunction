datapack enable "file/sheep_hoarder"
tp @a -544 82 47
spawnpoint @a -544 82 47
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Sheep Hoarders","color":"green","bold":true}
advancement revoke @a only game:enter_sheep_hoarder
scoreboard players set @a ready 0

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        夺羊之战","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"地图中间的神庙会在游戏开始时及之后每隔30s生成白色绵羊。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"使用魔杖把羊吸收，你将暂时成为一只羊，此时你的移动速度降低。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"回到基地来释放羊，释放后羊将变为本队颜色，但可重新被他队玩家吸收。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"若你击杀了一个吸收了羊的玩家，则羊会传递到你身上。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏时长固定为5分钟，结束时基地中剩余羊最多的队伍获胜。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon