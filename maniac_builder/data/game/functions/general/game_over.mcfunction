title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle {"text":"正在统计总得分...","color":"gold","bold":false}
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
gamemode spectator @a
scoreboard players set INGAME data 0
schedule function game:general/reset_game 5s