datapack enable "file/murder_mystery"
execute in multi:bingo run tp @a -17 110 33 facing -33 112 33
execute in multi:bingo run spawnpoint @a -17 110 33
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Bingo Game","color":"green","bold":true}
advancement revoke @a only game:enter_murder_mystery
scoreboard players set @a ready 0
scoreboard players set @a fungus_stick 0

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        B.I.N.G.O","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"在随机生成的世界中生存，并收集资源。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"率先获得Bingo面板上一行、列或斜线上所有物品的队伍获胜。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你可以无限次重生，但死亡后物品会消失。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon

# tellraw @s [{"text":"["},{"text":"❌","color":"red"},{"text":"]"},{"text":" 该游戏正在维护中，稍后回来！","color":"yellow","bold":true}]
advancement revoke @a only game:enter_murder_mystery