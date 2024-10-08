# Starting the game
time set midnight
gamemode adventure @a[tag=!spec]
scoreboard players set @a data 0
scoreboard players set @a ready 0
scoreboard players set @a sneak_time 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set ROUND tick_elapsed 1
scoreboard players set ROUND_TIME tick_elapsed 1402
scoreboard players set @a round_blocks_mb 0
scoreboard players set @a round_score_mb 0
scoreboard players set @a total_score_mb 0

# Teleporting players to the arena
function game:general/teleport/base
schedule function game:general/teleport/tp 30t
schedule function game:general/switch_ingame 32t

# clear @a
effect clear @a
effect give @a minecraft:haste infinite 1 true
effect give @a minecraft:resistance infinite 5 true
effect give @a minecraft:saturation infinite 5 true
effect give @a minecraft:jump_boost infinite 2 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:regeneration infinite 5 true
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Build Mart ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:maniac_builder"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_MANIAC_BUILDERS data 1