datapack enable "file/maniac_builder"
tp @a 2063 141 1062
spawnpoint @a 2063 141 1062
team leave @a[tag=!spec]
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Maniac Builder","color":"green","bold":true}
advancement revoke @a only game:enter_maniac_builder
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:maniac_builders players @a

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        速建大师","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"每轮游戏你有15秒钟的时间记忆一个给定的建筑。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"随后，你将有45秒的时间来尽力复原该建筑。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"每轮结束后你将依据复原所用时间获得一定分数。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"若你未完成一个建筑的复原，则该轮你不获得任何分数。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
function hall:fireworks/night