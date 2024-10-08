tp @a 124 76 -1092
spawnpoint @a 124 76 -1092
team leave @a[tag=!spec]
title @a title {"text":"欢迎来到竞技场！","color":"red","bold":true}
title @a subtitle {"text":"现在是最终对决时刻。","color":"yellow"}

clear @a
effect clear @a
scoreboard players set BGM tick_elapsed -1
execute as @a at @s run playsound minecraft:casual_pvp master @s ~ ~ ~ 1 1

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        竞技场","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"这里没有规则，只有战斗。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你有五分钟的时间，祝你好运。。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Meltdown ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:casual_pvp"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

schedule function game:gears 1s
schedule function game:timer/4min 60s
schedule function game:timer/3min 120s
schedule function game:timer/2min 180s
schedule function game:timer/1min 240s
schedule function game:timer/5s 295s
schedule function game:timer/4s 296s
schedule function game:timer/3s 297s
schedule function game:timer/2s 298s
schedule function game:timer/1s 299s
schedule function hall:lobbies/final_return 300s

bossbar set minecraft:welcome_event players
bossbar set minecraft:casual_pvp players @a

function game:levels/levels_reset
function hall:fireworks/day