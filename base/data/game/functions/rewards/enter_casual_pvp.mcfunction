datapack enable "file/casual_pvp"
tp @a 124 76 -1092
spawnpoint @a 124 76 -1092
title @a title {"text":"欢迎来到竞技场！","color":"green"}
title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Dragonkeep","color":"gold"}]
advancement revoke @a only game:enter_casual_pvp

clear @a
effect clear @a
scoreboard players set BGM tick_elapsed 0
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Meltdown ","color":"white","italic":true},{"text":"From MCC Original Soundtrack.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:casual_pvp"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

function game:levels/levels_reset
time set noon