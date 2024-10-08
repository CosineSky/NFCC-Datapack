gamemode spectator @a[scores={tutorials_time=1,tutorials=10}]
tp @a[scores={tutorials_time=1..399,tutorials=10}] -4646 131 4427 facing -4572 127 4427
title @a[scores={tutorials_time=1,tutorials=10}] title [{"text":"-[ ","color":"gray"},{"text":"Guardian Leagues","color":"dark_aqua"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=10}] subtitle {"text":"守卫者联盟","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=10}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"dark_aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=10}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=10}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=10}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"保护好我方守卫者，并试图击杀其它队伍的守卫者。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"守卫者死亡后，同队所有玩家无法复活；存活到最后的队伍胜利。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"同时你可以从地图中央及热气球中拾取随机技能，给对方一个惊喜。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"游戏随机性较强，侧重于娱乐体验。","color":"red"}]
tellraw @a[scores={tutorials_time=200,tutorials=10}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=10}] -4551 97 4449 facing -4546 95 4454
title @a[scores={tutorials_time=400,tutorials=10}] title [{"text":"-[ ","color":"gray"},{"text":"守卫者","color":"dark_aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=10}] subtitle {"text":"The Guardian","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=10}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=10}] {"text":"                       守卫者","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"四只守卫者将在游戏开始后生成于各队伍的城堡内。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"它们具有高额的生命，但会随时间流逝而逐渐扣除。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"此外，守卫者会对周围攻击它的玩家造成荆棘和魔法伤害。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"你可以在守卫者周围放置方块以保护它们。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=10}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=10}] -4559 97 4440 facing -4573 91 4427
title @a[scores={tutorials_time=600,tutorials=10}] title [{"text":"-[ ","color":"gray"},{"text":"随机技能","color":"dark_aqua","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=10}] subtitle {"text":"Random Skills","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=10}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=10}] {"text":"                       随机技能","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"每隔固定时间，地图中央及热气球出会刷出随机技能。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"玩家通过吃掉技能箱来拾取它们，并使用丢弃键释放。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=10}] [{"text":" ● ","color":"yellow"},{"text":"技能说明会在一名玩家拾起技能后对所有玩家展示，在此省略。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=10}] [{"text":" ● ","color":"red"},{"text":"当然，从技能箱中，你也可能开出一些可怕的东西 :)","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=10}] "====================================================="

tp @a[scores={tutorials_time=800..899,tutorials=10}] -4646 131 4427 facing -4572 127 4427
title @a[scores={tutorials_time=800,tutorials=10}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=900,tutorials=10}]
gamemode adventure @a[scores={tutorials_time=900,tutorials=10}]
tp @a[scores={tutorials_time=900,tutorials=10}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=900,tutorials=10}] run function hall:tutorials/show/reset