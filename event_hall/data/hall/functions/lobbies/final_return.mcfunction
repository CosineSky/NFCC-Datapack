scoreboard players add PLAYED_GAMES data 1
tp @a -1985 11 -40 facing -1944 17 -40
spawnpoint @a -1985 11 -40
clear @a
team leave @a[tag=!spec]
function game:levels/levels_set
effect give @a saturation 114514 1 true

title @a title {"text":"比赛全部流程已结束！","color":"yellow","bold":true}
title @a subtitle {"text":"正在统计最终结果...","color":"gold"}

# Announcing scores
# execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}
# tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"竞技场及总得分：","color":"white"}]
# execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":"[⭐] "},{"text":"联赛已全部结束，结果将在10秒后公布！","color":"green","bold":true}]

# NEED CHANGES #
# datapack disable "file/casual_pvp"
# bossbar set minecraft:casual_pvp players
datapack disable "file/rainbow_rhythms"
stopsound @a master
scoreboard objectives setdisplay sidebar
schedule function hall:trophy/final 10s
schedule function hall:trophy/titles/1 15s
schedule function hall:trophy/titles/2 20s
schedule function hall:trophy/titles/3 25s
schedule function hall:trophy/titles/4 30s
schedule function hall:trophy/titles/5 35s
schedule function hall:trophy/titles/6 45s
schedule function hall:trophy/titles/7 60s
schedule function hall:trophy/titles/8 75s

function game:levels/levels_set
function hall:fireworks/night