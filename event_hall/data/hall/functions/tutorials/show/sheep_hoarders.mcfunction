gamemode spectator @a[scores={tutorials_time=1,tutorials=3}]
tp @a[scores={tutorials_time=1..399,tutorials=3}] -578 64 16 facing -561 64 34
title @a[scores={tutorials_time=1,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"Sheep Hoarders","color":"yellow"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=3}] subtitle {"text":"夺羊大战","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"yellow","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=3}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=3}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=3}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"从神庙或其他玩家的基地夺取绵羊，并看守好基地的羊！","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"游戏时长为4分钟，游戏结束时基地内羊最多的队伍获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=3}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=3}] -578 64 16 facing -561 64 34
title @a[scores={tutorials_time=400,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"神庙","color":"yellow","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=3}] subtitle {"text":"The Temple","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=3}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=3}] {"text":"                       神庙","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"神庙位于地图中央，是所有绵羊的最初生成地。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"游戏开始时神庙中心立即生成5只绵羊，随后每25秒生成新的一只。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=3}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=3}] -578 64 16 facing -561 64 34
title @a[scores={tutorials_time=600,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"法师","color":"yellow","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=3}] subtitle {"text":"Mages","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=3}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=3}] {"text":"                       法师","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"游戏开始时所有玩家均为法师。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"法师同时拥有近战的远程攻击的能力。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"作为法师，你还可以使用法师之杖对羊左击来将羊的灵魂吸收。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"将羊吸收后，羊将立即消失，而你将成为羊人。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=3}] "====================================================="

tp @a[scores={tutorials_time=800..999,tutorials=3}] -578 64 16 facing -561 64 34
title @a[scores={tutorials_time=800,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"羊人","color":"yellow","bold":true}," ]-"]
title @a[scores={tutorials_time=800,tutorials=3}] subtitle {"text":"Sheepmen","color":"yellow"}
tellraw @a[scores={tutorials_time=800,tutorials=3}] "====================================================="
tellraw @a[scores={tutorials_time=800,tutorials=3}] {"text":"                      羊人","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=800,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"当你作为法师吸收一只羊的灵魂，你便成为羊人。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"羊人的移动速度慢于法师，且没有远程武器。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"作为羊人，你应该用最快的速度奔回基地，以将羊的灵魂释放。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"此外，若你击杀了一只羊人，则你成为羊人。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=3}] "====================================================="

tp @a[scores={tutorials_time=1000..1399,tutorials=3}] -572 65 23 facing -585 61 11
title @a[scores={tutorials_time=1000,tutorials=3}] title [{"text":"-[ ","color":"gray"},{"text":"基地","color":"yellow","bold":true}," ]-"]
title @a[scores={tutorials_time=1000,tutorials=3}] subtitle {"text":"Bases","color":"yellow"}
tellraw @a[scores={tutorials_time=1000,tutorials=3}] "====================================================="
tellraw @a[scores={tutorials_time=1000,tutorials=3}] {"text":"                      基地","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=1000,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"基地位于地图的四角，是玩家的重生地。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"成为羊人后，你只有返回基地才能释放羊的灵魂。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"此外，基地会给予对应队伍的玩家再生效果。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=3}] [{"text":" ● ","color":"yellow"},{"text":"守住基地，不要让捕来的羊被再次夺去！","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=3}] "====================================================="

title @a[scores={tutorials_time=1200,tutorials=3}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=1300,tutorials=3}]
gamemode adventure @a[scores={tutorials_time=1300,tutorials=3}]
tp @a[scores={tutorials_time=1300,tutorials=3}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=1300,tutorials=3}] run function hall:tutorials/show/reset