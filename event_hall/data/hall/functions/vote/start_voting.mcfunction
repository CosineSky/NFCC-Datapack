# Teleport to voting spots
function hall:teleport/base

# Play bgm (once)
stopsound @a master
execute as @a at @s run playsound minecraft:voting master @s ~ ~ ~ 0.2 1

# Show prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        投票规则","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你将获得多个雪球，分别代表不同小游戏。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"向场地中心投掷雪球可以将周围羊毛替换成其所对应的颜色。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"投票结束后，覆盖面积最大的羊毛对应的小游戏被选中。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Show score rates
title @a title {"text":"本轮游戏倍率：","color":"yellow","bold":true}
execute if score PLAYED_GAMES data matches 0 run title @a subtitle {"text":"1.0x","color":"light_purple","bold":true}
execute if score PLAYED_GAMES data matches 1 run title @a subtitle {"text":"1.2x","color":"light_purple","bold":true}
execute if score PLAYED_GAMES data matches 2 run title @a subtitle {"text":"1.4x","color":"light_purple","bold":true}
execute if score PLAYED_GAMES data matches 3 run title @a subtitle {"text":"1.6x","color":"light_purple","bold":true}
execute if score PLAYED_GAMES data matches 4 run title @a subtitle {"text":"1.8x","color":"light_purple","bold":true}
execute if score PLAYED_GAMES data matches 5 run title @a subtitle {"text":"2.0x","color":"light_purple","bold":true}

# Reset game scores
function hall:vote/reset_score

# Set the voting page to 1st page
# scoreboard players set @a[tag=!spec] carrot_stick 2

# Start the event
scoreboard players set EVENT_STARTED data 1
