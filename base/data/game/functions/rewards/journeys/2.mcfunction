datapack enable "file/journeys"
execute in multi:journey run tp @a 28 203 -26
execute in multi:journey run spawnpoint @a 548 231 585
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"The Journeys","color":"green","bold":true}
advancement revoke @a only game:enter_journeys
scoreboard players set @a ready 0
scoreboard players set @a map_selector 0
scoreboard players set CHOSEN_MAP data 2

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        跑酷之旅","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"运用你熟练的跑酷技巧完成尽力跑得更远。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"地图共有8大关，每个大关包含4小关，大关之间难度递增。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"初始时你有180s的时间，每完成一小关你获得一定积分和时长奖励。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"该地图存在一些捷径，找到它们或许能节约不少时间...。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"所有玩家时长用尽时游戏结束，积分最高者获胜。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你可以随时跳关，但无法获得该关的时间和分数奖励","color":"red"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon
