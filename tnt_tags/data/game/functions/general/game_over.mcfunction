team leave @a
tellraw @a[gamemode=adventure] [{"text":"你活到了最后，获得了额外的","color":"yellow"},{"text":"+35","color":"green"},"⭐"]
scoreboard players add @a[gamemode=adventure] round_score_mb 35
title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle [{"selector":"@a[gamemode=adventure,limit=1]","color":"green","bold":true},{"text":" 活到了最后！GG！","color":"gold","bold":false}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
gamemode spectator @a[tag=!spec]
scoreboard players set INGAME data 0
schedule function game:general/reset_game 5s