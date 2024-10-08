gamemode spectator @a[scores={tutorials_time=1,tutorials=11}]
tp @a[scores={tutorials_time=1..399,tutorials=11}] 459 84 -17 facing 466 79 -26
title @a[scores={tutorials_time=1,tutorials=11}] title [{"text":"-[ ","color":"gray"},{"text":"Lava Dancers","color":"gold"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=11}] subtitle {"text":"熔岩之上","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=11}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"gold","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=11}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=11}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=11}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=11}] [{"text":" ● ","color":"yellow"},{"text":"地图由两层TNT构成，而最底部是熔岩，坠入其中则被淘汰。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=11}] [{"text":" ● ","color":"yellow"},{"text":"用烈焰弓进行射击，点燃其他玩家脚下的TNT以使他们坠落。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=11}] [{"text":" ● ","color":"yellow"},{"text":"场地内只有一名玩家幸存时，游戏结束，该玩家获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=11}] "====================================================="

title @a[scores={tutorials_time=400,tutorials=11}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=500,tutorials=11}]
gamemode adventure @a[scores={tutorials_time=500,tutorials=11}]
tp @a[scores={tutorials_time=500,tutorials=11}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=500,tutorials=11}] run function hall:tutorials/show/reset