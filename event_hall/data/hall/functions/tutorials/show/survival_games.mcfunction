gamemode spectator @a[scores={tutorials_time=1,tutorials=5}]
tp @a[scores={tutorials_time=1..399,tutorials=5}] -80 27 -60 facing -67 24 -67
title @a[scores={tutorials_time=1,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"Survival Games","color":"dark_green"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=5}] subtitle {"text":"饥饿游戏","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"dark_green","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=5}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=5}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=5}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"在一张大型地图内搜寻补给箱，不断强化自己。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"只身一人与其他玩家战斗，成为活到最后的赢家！","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=5}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=5}] -66 55 -83 facing -71 54 -87
title @a[scores={tutorials_time=400,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"奖励箱","color":"dark_green","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=5}] subtitle {"text":"Chests","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=5}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=5}] {"text":"                       奖励箱","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"奖励箱散布在地图内各处，但在地图中央分布更集中。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"你可以从箱子中获取武器、盔甲、食物、附魔书等物品。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=5}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=5}] -103 57 -59 facing -109 54 -54
title @a[scores={tutorials_time=600,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"工具方块","color":"dark_green","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=5}] subtitle {"text":"Tools","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=5}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=5}] {"text":"                       工具方块","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"除奖励箱外，地图内还散布有工作台、附魔台和铁砧。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"合理使用它们，让自己变得更强大。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=5}] "====================================================="

tp @a[scores={tutorials_time=800..999,tutorials=5}] -81 57 -59 facing -63 53 -74
title @a[scores={tutorials_time=800,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"职业","color":"dark_green","bold":true}," ]-"]
title @a[scores={tutorials_time=800,tutorials=5}] subtitle {"text":"Classes","color":"yellow"}
tellraw @a[scores={tutorials_time=800,tutorials=5}] "====================================================="
tellraw @a[scores={tutorials_time=800,tutorials=5}] {"text":"                      职业","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=800,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"游戏提供6种职业，在准备游戏之前，你必须选择一种。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"僵尸、蜘蛛易于操控，适合PVP新手玩家在近战对决中造成大额伤害。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"骷髅、烈焰人是偏好远程攻击的玩家的最佳选择。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"末影人、爬行者技巧性较强，适合有走位、连击等经验的PVP玩家使用。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=5}] "====================================================="

tp @a[scores={tutorials_time=1000..1399,tutorials=5}] -81 57 -59 facing -63 53 -74
title @a[scores={tutorials_time=1000,tutorials=5}] title [{"text":"-[ ","color":"gray"},{"text":"游戏机制","color":"dark_green","bold":true}," ]-"]
title @a[scores={tutorials_time=1000,tutorials=5}] subtitle {"text":"Game Mechanism","color":"yellow"}
tellraw @a[scores={tutorials_time=1000,tutorials=5}] "====================================================="
tellraw @a[scores={tutorials_time=1000,tutorials=5}] {"text":"                      游戏机制","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=1000,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"游戏开始后一分钟内为发育阶段，玩家无法对彼此造成伤害。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"PVP将在随后的四分钟进行，与此同时地图边境将缓慢收缩。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"若游戏在5分钟内未结束，所有玩家将被传送至地图中央进行决斗。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=5}] [{"text":" ● ","color":"yellow"},{"text":"活到最后的玩家取得游戏胜利！","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=5}] "====================================================="

title @a[scores={tutorials_time=1200,tutorials=5}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=1300,tutorials=5}]
gamemode adventure @a[scores={tutorials_time=1300,tutorials=5}]
tp @a[scores={tutorials_time=1300,tutorials=5}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=1300,tutorials=5}] run function hall:tutorials/show/reset