title @a title {"text":"最终对决结束！","color":"yellow","bold":true}
title @a subtitle [{"selector":"@a[limit=1,tag=second]","color":"blue","bold":true},{"text":" 赢得了战桥对决，GG！","color":"gold","bold":false}]
tag @a[tag=second] add champion
gamemode spectator @a
schedule function game:general/reset_game 5s