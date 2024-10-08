# Starting the game
gamemode adventure @a[tag=!spec]
team join tnt_tag_green @a[tag=!spec]
scoreboard players set @a ready 0
scoreboard players set @a has_tnt 0
scoreboard players set @a tick_elapsed 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set ROUND tick_elapsed 1
scoreboard players set ROUND_TIME tick_elapsed 920
scoreboard players set @a round_score_mb 0
execute as @e[tag=tnt_tags_center,limit=1] at @s run spawnpoint @a ~ ~ ~
tp @a @e[tag=tnt_tags_center,limit=1]
schedule function game:general/switch_ingame 2t

# clear @a
effect clear @a
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Parkour Tag ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:tnt_tags"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_TNT_TAGS data 1