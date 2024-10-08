tellraw @s [{"text":"+150","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（拆床奖励）","color":"gold"}]
scoreboard players add @s round_score_mb 150

tellraw @a [{"text":"[⚔] "},{"selector":"@s"},{"text":" 拆毁了","color":"white"},{"text":"蓝色床","color":"blue","bold":true},{"text":"，所有蓝队玩家将不能再复活！"}]
execute as @a at @s run playsound minecraft:entity.wither.death hostile @s ~ ~ ~ 2 1 1
title @a[team=blue] title {"text":"床已被摧毁！","color":"red","bold":true}
title @a[team=blue] subtitle {"text":"你将不能再复活。","color":"yellow","bold":true}
scoreboard players set @s blue_bed_broken 0
scoreboard players set @a[team=blue] respawnable 0