gamemode spectator @a[scores={tutorials_time=1,tutorials=2}]
tp @a[scores={tutorials_time=1..399,tutorials=2}] 5079 185 5091 facing 5094 176 5074
title @a[scores={tutorials_time=1,tutorials=2}] title [{"text":"-[ ","color":"gray"},{"text":"Quakecraft","color":"gold"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=2}] subtitle {"text":"雷神之锤","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=2}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"gold","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=2}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=2}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=2}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=2}] [{"text":" ● ","color":"yellow"},{"text":"右键使用钓鱼竿进行射击，对前方直线上目标造成一击必杀伤害。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=2}] [{"text":" ● ","color":"yellow"},{"text":"射击有2.5秒的冷却时间，你可以无限次进行射击。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=2}] [{"text":" ● ","color":"yellow"},{"text":"被射杀后你将在地图随机位置复活，复活次数无限。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=2}] [{"text":" ● ","color":"yellow"},{"text":"每轮游戏时长为5分钟，尽力击杀更多的敌人！","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=2}] "====================================================="

title @a[scores={tutorials_time=400,tutorials=2}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=500,tutorials=2}]
gamemode adventure @a[scores={tutorials_time=500,tutorials=2}]
tp @a[scores={tutorials_time=500,tutorials=2}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=500,tutorials=2}] run function hall:tutorials/show/reset