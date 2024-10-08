gamemode spectator @a[scores={tutorials_time=1,tutorials=8}]
tp @a[scores={tutorials_time=1..399,tutorials=8}] 2063 120 968 facing 2063 10 1085
title @a[scores={tutorials_time=1,tutorials=8}] title [{"text":"-[ ","color":"gray"},{"text":"Maniac Builders","color":"dark_purple"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=8}] subtitle {"text":"速建大师","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=8}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"dark_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=8}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=8}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=8}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=8}] [{"text":" ● ","color":"yellow"},{"text":"每轮游戏你将得到一个5*5*5的建筑，并在随后15秒内记忆它。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=8}] [{"text":" ● ","color":"yellow"},{"text":"在随后的45秒内，使用给定的方块复原该建筑。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=8}] [{"text":" ● ","color":"yellow"},{"text":"复原速度越快，该轮得分越多；复原失败则不得分。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=8}] [{"text":" ● ","color":"yellow"},{"text":"游戏共分为9轮，总得分最高的玩家获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=8}] "====================================================="

title @a[scores={tutorials_time=400,tutorials=8}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=500,tutorials=8}]
gamemode adventure @a[scores={tutorials_time=500,tutorials=8}]
tp @a[scores={tutorials_time=500,tutorials=8}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=500,tutorials=8}] run function hall:tutorials/show/reset