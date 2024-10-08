# datapack enable "file/Quakecraft_ready"
# tp @a 5088 177 5073
# spawnpoint @a 5088 177 5073
# team leave @a[tag=!spec]
# title @a title {"text":"你现在的大厅：","color":"yellow"}
# title @a subtitle {"text":"Quakecraft","color":"green","bold":true}
# advancement revoke @a only game:enter_quakecraft
# scoreboard players set @a ready 0

# bossbar set minecraft:welcome_event players
# bossbar set minecraft:quakecraft players @a

# # Showing prompts
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}
# tellraw @a {"text":"                        雷神之锤","bold":true,"color":"yellow"}
# tellraw @a [{"text":" ● ","color":"yellow"},{"text":"无所谓，射就完了。","color":"white"}]
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# function game:levels/levels_reset
# function hall:fireworks/day

scoreboard players set @r map_selector 302