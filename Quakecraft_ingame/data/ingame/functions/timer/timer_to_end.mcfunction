# Extra scores
scoreboard players add @a[scores={qc_kill_count=50..}] round_score_mb 150
tellraw @a[scores={qc_kill_count=50..}] [{"text":"+150","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀数超过50）","color":"gold"}]
scoreboard players add @a[scores={qc_kill_count=40..49}] round_score_mb 125
tellraw @a[scores={qc_kill_count=40..49}] [{"text":"+125","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀数超过40）","color":"gold"}]
scoreboard players add @a[scores={qc_kill_count=30..39}] round_score_mb 100
tellraw @a[scores={qc_kill_count=30..39}] [{"text":"+100","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀数超过30）","color":"gold"}]

# Multiplying scores
execute if score PLAYED_GAMES data matches 0 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_10 data
execute if score PLAYED_GAMES data matches 1 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_12 data
execute if score PLAYED_GAMES data matches 2 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_14 data
execute if score PLAYED_GAMES data matches 3 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_16 data
execute if score PLAYED_GAMES data matches 4 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_18 data
execute if score PLAYED_GAMES data matches 5 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_20 data
scoreboard players operation @a[tag=!spec] round_score_mb /= CONST_10 data

# Announcing scores
execute as @a[tag=!spec] run scoreboard players operation @s total_score_hub += @s round_score_mb
execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Reset the game
tellraw @a [{"text":"[⭐] "},{"text":"游戏结束！","color":"green"}]
title @a title {"text":"游戏结束！","color":"green","bold":true}
effect clear @a
clear @a
stopsound @a
tag @a remove invincible
scoreboard objectives setdisplay sidebar
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1
function ingame:timer/clear


# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"Quakecraft","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_QUAKECRAFT","objective":"data"},"color":"green"},{"text":"/2","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_QUAKECRAFT data matches 2.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"Quakecraft","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_QUAKECRAFT data matches 2.. run schedule function hall:lobbies/qc_patch 10s

scoreboard players set INGAME data 0
