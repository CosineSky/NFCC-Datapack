datapack enable "file/Quakecraft_ready"
tp @a 5001 193 2519
spawnpoint @a 5001 193 2519
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Quakecraft","color":"green","bold":true}
advancement revoke @a only game:enter_quakecraft
scoreboard players set @a ready 0
scoreboard players set @a map_selector 0
scoreboard players set CHOSEN_MAP data 302

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                        雷神之锤","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"无所谓，射就完了。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon