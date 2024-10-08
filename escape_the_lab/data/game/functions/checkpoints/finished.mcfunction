# Title display
title @s title {"text":"You Won!","color":"gold","bold":true}
title @s subtitle ["",{"text":"本圈用时: ","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"}," | ",{"text":"总用时: ","color":"yellow"},{"text":"NaN","color":"aqua"}]

# Finished
tag @s add finished
gamemode spectator @s
