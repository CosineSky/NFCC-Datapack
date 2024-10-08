# Teleporting to the arena
tp @a @e[tag=sand_runners_center,limit=1]

# Starting the game
gamemode adventure @a[tag=!spec]
team join sand_runners @a[tag=!spec]
scoreboard players set GAME tick_elapsed 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set @a round_score_mb 0
schedule function game:general/switch_ingame 4t

effect clear @a[tag=!spec]
effect give @a saturation 114514 1 true
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Hole in the Wall ","color":"white","italic":true},{"text":"From MCC Original Soundtrack.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:sand_runners"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_LAVA_DANCERS data 1