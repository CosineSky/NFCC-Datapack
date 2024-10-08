datapack enable "file/hunger_games"
execute in game:custom run tp @a -591 103 -96
execute in game:custom run spawnpoint @a -591 103 -96
execute in game:custom run worldborder center -591 -96
execute in game:custom run worldborder set 400
team leave @a[tag=!spec]
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Survival Games","color":"green","bold":true}
advancement revoke @a only game:enter_hunger_games
scoreboard players set @a ready 0

bossbar set minecraft:welcome_event players
bossbar set minecraft:survival_games players @a

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        饥饿游戏","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"探索地图各个角落，收集箱子中的资源，使自己强大起来。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"游戏开始一分钟内，所有玩家处于保护状态；随后战斗开始。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你只有一条生命。活到最后的唯一玩家取得胜利。","color":"white"}]
tellraw @a [{"text":" ● ","color":"red"},{"text":"注意：最终对决将在5分钟后开始，所有玩家将被传送至竞技场！","color":"red"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

tellraw @a [{"text":"⚠ "},{"text":"不同职业在玩法上可能大有不同，请谨慎选择！","color":"red"}]

function game:levels/levels_reset
function hall:fireworks/day