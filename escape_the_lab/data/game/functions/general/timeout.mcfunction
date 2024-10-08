title @a title {"text":"游戏结束！","color":"green","bold":true}
title @a subtitle [{"text":"正在统计得分...","color":"yellow","bold":false}]
stopsound @a
gamemode spectator @a
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 2.0 1.0
scoreboard players set INGAME data 0
schedule function game:general/reset_game 5s