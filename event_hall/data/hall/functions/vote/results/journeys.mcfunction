# title @a title ["-[ ",{"text":"Bedwars","color":"yellow"}," ]-"]
# title @a subtitle {"text":"祝你好运！","color":"gold"}

title @a times 0t 100t 20t
function hall:vote/results/animations/journeys/1

tellraw @a [{"text":"[⭐]"},{"text":"投票结果计算完毕！获胜的小游戏是：","color":"yellow"},{"text":"The Journeys","color":"green"},{"text":"！","color":"yellow"}]

tellraw @a {"text":"你将在10秒后被传送至对应的小游戏房间，请等待...","color":"red"}
tellraw @a {"text":"(该游戏传送时可能会发生较严重卡顿，请见谅！)","color":"gray","italic":true,"bold":true}
schedule function hall:lobbies/enter_journeys 10s