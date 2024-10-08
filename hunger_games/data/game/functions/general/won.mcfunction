title @a title {"text":"游戏结束！","color":"green","bold":true}
tellraw @a[gamemode=adventure] [{"text":"你活到了最后，获得了额外的","color":"yellow"},{"text":"+300","color":"green"},"⭐"]
scoreboard players add @a[gamemode=adventure] round_score_mb 300
title @a subtitle [{"selector":"@a[gamemode=adventure,limit=1]","color":"gold","bold":true},{"text":"是最后的赢家！","color":"yellow","bold":false}]
stopsound @a
gamemode spectator @a
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 2.0 1.0
schedule function game:general/reset_game 5s