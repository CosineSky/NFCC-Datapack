function game:itemlist/acquire/clear_all

execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5

title @a title [{"text":"B.I.N.G.O","color":"blue","bold":true}]
title @a subtitle [{"text":"蓝队","color":"blue","bold":true},{"text":"获得了胜利!","color":"gold"}]

tellraw @a ["[",{"text":"⚔","color":"aqua"},"] ",{"text":"本局游戏已结束，","color":"yellow","bold":true},{"text":"10","color":"green","bold":true},{"text":"秒后你将被传送至开始大厅！","color":"yellow","bold":true}]

schedule function game:general/reset_game 10s