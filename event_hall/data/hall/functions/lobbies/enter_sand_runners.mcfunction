datapack enable "file/sand_runners"
tp @a 470 74 -55
spawnpoint @a 470 74 -55
team leave @a[tag=!spec]
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Lava Dancers","color":"green","bold":true}
advancement revoke @a only game:enter_sand_runners
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:sand_runners players @a

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        熔岩之上","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你出生在神庙中央，不幸的是，你脚下遍布TNT。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"射击其他玩家下方的TNT，来让他们坠入下方的熔岩吧。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
function hall:fireworks/day