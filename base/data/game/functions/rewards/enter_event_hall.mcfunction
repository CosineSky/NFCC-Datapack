datapack enable "file/event_hall"
scoreboard players set @a sneak_time 0
tp @a -1985 11 -40 facing -1944 17 -40
spawnpoint @a -1985 11 -40
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Event Hall","color":"green","bold":true}
advancement revoke @a only game:enter_event_hall

bossbar set minecraft:welcome players
bossbar set minecraft:welcome_event players @a

function game:levels/levels_set
function hall:fireworks/beacons/beacon_blue
time set midnight

# tellraw @s [{"text":"["},{"text":"❌","color":"red"},{"text":"]"},{"text":" 请耐心等待第三届小游戏联赛开启！","color":"yellow","bold":true}]
# advancement revoke @a only game:enter_event_hall