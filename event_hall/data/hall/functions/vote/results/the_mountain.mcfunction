# title @a title ["-[ ",{"text":"The Mountain","color":"yellow"}," ]-"]
# title @a subtitle {"text":"祝你好运！","color":"gold"}

title @a times 0t 100t 20t
function hall:vote/results/animations/the_mountain/1

tellraw @a [{"text":"[⭐]"},{"text":"投票结果计算完毕！获胜的小游戏是：","color":"yellow"},{"text":"The Mountain","color":"green"},{"text":"！","color":"yellow"}]

tellraw @a {"text":"你将在10秒后被传送至对应的小游戏房间，请等待...","color":"red"}
schedule function hall:lobbies/enter_the_mountain 10s