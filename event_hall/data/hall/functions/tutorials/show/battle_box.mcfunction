gamemode spectator @a[scores={tutorials_time=1,tutorials=4}]
tp @a[scores={tutorials_time=1..399,tutorials=4}] 8 15 -9 facing -6 2 8
title @a[scores={tutorials_time=1,tutorials=4}] title [{"text":"-[ ","color":"gray"},{"text":"Battle Box","color":"green"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=4}] subtitle {"text":"战盒","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=4}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"green","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=4}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=4}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=4}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"红蓝两队将在一张小型地图内正面PVP对决。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"率先用本队颜色羊毛填充中间区域的一方获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=4}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=4}] -30 3 4 facing -23 2 -4
title @a[scores={tutorials_time=400,tutorials=4}] title [{"text":"-[ ","color":"gray"},{"text":"补给","color":"green","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=4}] subtitle {"text":"Supplies","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=4}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=4}] {"text":"                       补给","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"战斗开始前，两队玩家可分别在初始房间领取补给。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"补给共有四种，且每轮每个玩家只能选择其中一种。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"它们分别是：击退剑、击退弓、抗火药水和岩浆行者靴子。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"此外，即使你不选择任何补给，你也将获得剑、弩、剪刀等初始道具。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=4}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=4}] 8 15 -9 facing -6 2 8
title @a[scores={tutorials_time=600,tutorials=4}] title [{"text":"-[ ","color":"gray"},{"text":"游戏流程","color":"green","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=4}] subtitle {"text":"Game Process","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=4}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=4}] {"text":"                       游戏流程","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"该游戏节奏较快，每局持续最长2分钟。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"若游戏结束时没有任何一方将中间的羊毛填充，则平局。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=4}] [{"text":" ● ","color":"yellow"},{"text":"每轮每个玩家只有一条生命，请谨慎行动！","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=4}] "====================================================="

title @a[scores={tutorials_time=800,tutorials=4}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=900,tutorials=1}]
gamemode adventure @a[scores={tutorials_time=900,tutorials=4}]
tp @a[scores={tutorials_time=900,tutorials=4}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=900,tutorials=4}] run function hall:tutorials/show/reset