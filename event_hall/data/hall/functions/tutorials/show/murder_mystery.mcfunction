gamemode spectator @a[scores={tutorials_time=1,tutorials=9}]
tp @a[scores={tutorials_time=1..399,tutorials=9}] 25 109 967 facing 33 102 959
title @a[scores={tutorials_time=1,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"Murder Mystery","color":"light_purple"}," ]-"]
title @a[scores={tutorials_time=1,tutorials=9}] subtitle {"text":"密室杀手","color":"yellow","bold":true}

title @a[scores={tutorials_time=200,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"游戏规则","color":"light_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=200,tutorials=9}] subtitle {"text":"Game Rules","color":"yellow"}
tellraw @a[scores={tutorials_time=200,tutorials=9}] "====================================================="
tellraw @a[scores={tutorials_time=200,tutorials=9}] {"text":"                      游戏规则","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=200,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"在密室内穿行，作为杀手，你要试图刺杀所有其他玩家。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"作为侦探，你需要通过推理尽力判断出杀手并将其射杀。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"如果你是平民，那么请活到最后，祝你好运。","color":"white"}]
tellraw @a[scores={tutorials_time=200,tutorials=9}] "====================================================="

tp @a[scores={tutorials_time=400..599,tutorials=9}] 6 96 951 facing 14 93 963
title @a[scores={tutorials_time=400,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"杀手","color":"light_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=400,tutorials=9}] subtitle {"text":"The Murderer","color":"yellow"}
tellraw @a[scores={tutorials_time=400,tutorials=9}] "====================================================="
tellraw @a[scores={tutorials_time=400,tutorials=9}] {"text":"                       杀手","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=400,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"每轮游戏开始后，一名随机的玩家被选为杀手。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"10秒后，杀手得到刺刀，并开始他的暗杀。","color":"white"}]
tellraw @a[scores={tutorials_time=400,tutorials=9}] "====================================================="

tp @a[scores={tutorials_time=600..799,tutorials=9}] 17 103 961 facing 11 102 967
title @a[scores={tutorials_time=600,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"侦探","color":"light_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=600,tutorials=9}] subtitle {"text":"Detectives","color":"yellow"}
tellraw @a[scores={tutorials_time=600,tutorials=9}] "====================================================="
tellraw @a[scores={tutorials_time=600,tutorials=9}] {"text":"                       侦探","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=600,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"另外，三名随机玩家则会成为侦探。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"每名侦探拥有一把弓和一支箭，以射杀他们认为是杀手的玩家。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"若侦探错误地命中了非杀手的玩家，则该侦探自己被淘汰。","color":"white"}]
tellraw @a[scores={tutorials_time=600,tutorials=9}] "====================================================="

tp @a[scores={tutorials_time=800..999,tutorials=9}] 43 111 944 facing 38 110 939
title @a[scores={tutorials_time=800,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"平民","color":"light_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=800,tutorials=9}] subtitle {"text":"Innocents","color":"yellow"}
tellraw @a[scores={tutorials_time=800,tutorials=9}] "====================================================="
tellraw @a[scores={tutorials_time=800,tutorials=9}] {"text":"                      平民","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=800,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"除杀手、侦探外的所有玩家均为平民。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"作为平民，你只需避开你所认为的杀手，尽力活到最后。","color":"white"}]
tellraw @a[scores={tutorials_time=800,tutorials=9}] "====================================================="

tp @a[scores={tutorials_time=1000..1399,tutorials=9}] 25 109 967 facing 33 102 959
title @a[scores={tutorials_time=1000,tutorials=9}] title [{"text":"-[ ","color":"gray"},{"text":"游戏机制","color":"light_purple","bold":true}," ]-"]
title @a[scores={tutorials_time=1000,tutorials=9}] subtitle {"text":"Game Mechanism","color":"yellow"}
tellraw @a[scores={tutorials_time=1000,tutorials=9}] "====================================================="
tellraw @a[scores={tutorials_time=1000,tutorials=9}] {"text":"                      游戏机制","color":"gold","bold":true}
tellraw @a[scores={tutorials_time=1000,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"若杀手刺杀了所有侦探和平民，则杀手获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"若一名侦探射杀了杀手，则侦探和平民一同获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=9}] [{"text":" ● ","color":"yellow"},{"text":"此外，若杀手未在3.5分钟内刺杀所有其它玩家，则平民也获胜。","color":"white"}]
tellraw @a[scores={tutorials_time=1000,tutorials=9}] "====================================================="

title @a[scores={tutorials_time=1200,tutorials=9}] title {"text":"Good Luck!","color":"green","bold":true}

stopsound @a[scores={tutorials_time=1300,tutorials=9}]
gamemode adventure @a[scores={tutorials_time=1300,tutorials=9}]
tp @a[scores={tutorials_time=1300,tutorials=9}] -1985 11 -40 facing -1944 17 -40
execute as @a[scores={tutorials_time=1300,tutorials=9}] run function hall:tutorials/show/reset