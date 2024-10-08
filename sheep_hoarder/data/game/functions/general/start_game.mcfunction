# Teleporting players to the arean
team leave @a
function game:general/teleport/base
schedule function game:general/teleport/tp 30t
schedule function game:general/switch_ingame 32t

# Starting the game
gamemode adventure @a[tag=!spec]
scoreboard players set @a ready 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set @a sheep_absorbed 0
scoreboard players set @a round_score_mb 0
scoreboard objectives setdisplay list health

effect clear @a[tag=!spec]
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Grid Runner ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:sheep_hoarders"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}
kill @e[type=minecraft:sheep]
kill @e[type=minecraft:item]

# Equiping armor
schedule function game:ingame/armor 33t
schedule function game:ingame/hotbar 33t
effect give @a speed infinite 0 true

# Summoning sheep
scoreboard players set @e[tag=sheep_summoner] tick_elapsed 600
execute as @e[tag=sheep_summoner] at @s run summon minecraft:sheep ~ ~ ~1.5 {Color:0b,AbsorptionAmount:1000f,NoAI:1b,Rotation:[0.0f,0.0f]}
execute as @e[tag=sheep_summoner] at @s run summon minecraft:sheep ~ ~ ~-1.5 {Color:0b,AbsorptionAmount:1000f,NoAI:1b,Rotation:[180.0f,0.0f]}
execute as @e[tag=sheep_summoner] at @s run summon minecraft:sheep ~1.5 ~ ~ {Color:0b,AbsorptionAmount:1000f,NoAI:1b,Rotation:[-90.0f,0.0f]}
execute as @e[tag=sheep_summoner] at @s run summon minecraft:sheep ~-1.5 ~ ~ {Color:0b,AbsorptionAmount:1000f,NoAI:1b,Rotation:[90.0f,0.0f]}

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_SHEEP_HOARDERS data 1