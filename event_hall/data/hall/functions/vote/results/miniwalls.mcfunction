title @a title ["-[ ",{"text":"Guardian Leagues","color":"yellow"}," ]-"]
title @a subtitle {"text":"祝你好运！","color":"gold"}
tellraw @a [{"text":"[⭐]"},{"text":"投票结果计算完毕！获胜的小游戏是：","color":"yellow"},{"text":"Guardian Leagues","color":"green"},{"text":"！","color":"yellow"}]

tellraw @a {"text":"你将在10秒后被传送至对应的小游戏房间，请等待...","color":"red"}
schedule function hall:lobbies/enter_miniwalls 10s