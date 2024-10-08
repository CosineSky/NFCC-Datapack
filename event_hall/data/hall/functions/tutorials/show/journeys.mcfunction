gamemode spectator @a[scores={tutorials_time=1,tutorials=6}]
tp @a[scores={tutorials_time=1..399,tutorials=6}] 463 293 653 facing 526 231 610
title @a[scores={tutorials_time=1,tutorials=6}] title [{"text":"-[ ","color":"gray"},{"text":"The Journeys","color":"aqua"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=6}] subtitle {"text":"跑酷之旅","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=6}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=6}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=6}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=6}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"硬核跑酷地图，祝你好运！","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=6}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=6}] 551 243 545 facing 551 239 524
title @a[scores={tutorials_time=400,tutorials=6}] title [{"text":"-[ ","color":"gray"},{"text":"关卡","color":"aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=6}] subtitle {"text":"Levels","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=6}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=6}] {"text":"                       关卡","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"地图共分为8大关，每个大关包含4小关。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"大关间关卡难度呈递增趋势，但小关之间未必。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"此外，你可以随时通过喝掉物品栏内的药水进行跳关。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"许多关卡包含着捷径，找到它们也许会节约你大量时间。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=6}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=6}] 551 243 545 facing 551 239 524
title @a[scores={tutorials_time=600,tutorials=6}] title [{"text":"-[ ","color":"gray"},{"text":"时间","color":"aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=6}] subtitle {"text":"Time","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=6}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=6}] {"text":"                       时间","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"所有玩家的初始游戏时间均为2分钟。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"每通过一小关，你获得25秒的额外时长奖励。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"若你跳关了某一关卡，则你不获得该关卡的时长奖励。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=6}] [{"text":" ● ","color":"yellow"},{"text":"当所有未到达终点的玩家耗尽时间时，游戏结束。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=6}] "====================================================="

title @a[scores={tutorials_time=800,tutorials=6}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=900,tutorials=6}]
gamemode adventure @a[scores={tutorials_time=900,tutorials=6}]
tp @a[scores={tutorials_time=900,tutorials=6}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=900,tutorials=6}] run function hall:tutorials/show/reset