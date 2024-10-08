gamemode spectator @a[scores={tutorials_time=1,tutorials=7}]
tp @a[scores={tutorials_time=1..399,tutorials=7}] -543 96 498 facing -552 90 486
title @a[scores={tutorials_time=1,tutorials=7}] title [{"text":"-[ ","color":"gray"},{"text":"TNT Tags","color":"blue"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=7}] subtitle {"text":"丢锅大战","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=7}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"blue","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=7}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=7}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=7}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"紧张刺激的追逐游戏，不要让灼热的TNT落在你的头上！","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=7}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=7}] -543 92 525 facing -539 89 533
title @a[scores={tutorials_time=400,tutorials=7}] title [{"text":"-[ ","color":"gray"},{"text":"炸弹人","color":"blue","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=7}] subtitle {"text":"Bombermen","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=7}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=7}] {"text":"                       炸弹人","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"游戏为回合制，每轮将从所有存活玩家选择1~3名成为炸弹人。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"作为炸弹人，你的目标是通过击打幸存者来把TNT传出去。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"你也可以按Q键释放苦力怕飞弹，被击中者将成为炸弹人。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"每轮游戏结束时，地图上所有炸弹人自爆并被淘汰。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=7}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=7}] -543 92 525 facing -539 89 533
title @a[scores={tutorials_time=600,tutorials=7}] title [{"text":"-[ ","color":"gray"},{"text":"幸存者","color":"blue","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=7}] subtitle {"text":"Survivors","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=7}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=7}] {"text":"                       幸存者","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"每轮开始时，未被选定为炸弹人的其他玩家均为幸存者。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"同时，当一名炸弹人把自己的炸弹传出去后，它也成为幸存者。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"幸存者拥有一个弹力球，可以造成更强劲的击退效果。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=7}] "====================================================="

tp @a[scores={tutorials_time=800..999,tutorials=7}] -550 150 490 facing -550 90 490
title @a[scores={tutorials_time=800,tutorials=7}] title [{"text":"-[ ","color":"gray"},{"text":"注意事项","color":"blue","bold":true}," ]-"]
title @a[scores={tutorials_time=800,tutorials=7}] subtitle {"text":"Notes","color":"yellow"}
tellraw @a[scores={tutorials_time=800,tutorials=7}] "====================================================="
tellraw @a[scores={tutorials_time=800,tutorials=7}] {"text":"                      注意事项","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=800,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"炸弹人拥有30%更快的移动速度。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"若玩家掉入虚空，不论他是炸弹人还是幸存者都会立即被淘汰。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=7}] [{"text":" ● ","color":"yellow"},{"text":"若所有炸弹人因落入虚空而出局，则该轮游戏提前结束。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=7}] "====================================================="

title @a[scores={tutorials_time=1000,tutorials=7}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=1100,tutorials=7}]
gamemode adventure @a[scores={tutorials_time=1100,tutorials=7}]
tp @a[scores={tutorials_time=1100,tutorials=7}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=1100,tutorials=7}] run function hall:tutorials/show/reset