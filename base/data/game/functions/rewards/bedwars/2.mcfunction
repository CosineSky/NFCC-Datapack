datapack enable "file/bedwars"
tp @a -722 173 -705
spawnpoint @a -722 173 -705
clear @a
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Bedwars","color":"green","bold":true}
advancement revoke @a only game:enter_bedwars
scoreboard players set @a ready 0
scoreboard players set @a map_selector 0
scoreboard players set CHOSEN_MAP data 202

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        起床战争","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"在基地和公共岛屿收集铁锭、金锭等资源以购买装备和道具。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"和团队配合，守卫好基地的床，并试图破坏其它队伍的床。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"床被破坏前，你可以无限复活；但被破坏后你只有一条生命。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"成为活到最后的队伍来取得游戏胜利。祝你好运！","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon