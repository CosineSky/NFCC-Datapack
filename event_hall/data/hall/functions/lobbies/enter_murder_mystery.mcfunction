datapack enable "file/murder_mystery"
tp @a 47 101 929
spawnpoint @a 47 101 929
team leave @a[tag=!spec]
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Murder Mystery","color":"green","bold":true}
advancement revoke @a only game:enter_murder_mystery
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:murderer_mystery players @a

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        密室杀手","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏中一名随机玩家作为杀手，而其他人则为平民。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"作为杀手，你需要在游戏结束前尽力刺杀全部平民。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"作为平民，你有一把弓，但不幸的是，你只有一发箭矢。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"此外，如果你射杀了另一平民，作为惩罚你也将被淘汰。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"若游戏结束时任一平民存活，则杀手输掉游戏。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
function hall:fireworks/night