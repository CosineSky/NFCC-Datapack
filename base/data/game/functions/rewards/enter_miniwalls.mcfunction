datapack enable "file/Miniwalls_Ready"
tp @a -4572 165 4427
spawnpoint @a -4572 165 4427
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Defense League","color":"green","bold":true}
advancement revoke @a only game:enter_miniwalls
scoreboard players set @a ready 0

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                    守卫者联盟","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"保护你方的守卫者，并尝试击败其他队伍的守卫者。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"一旦守卫者被击败，将不能复活。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"最终存活的队伍胜利。","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set noon