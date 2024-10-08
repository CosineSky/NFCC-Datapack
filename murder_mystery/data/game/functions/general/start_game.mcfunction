# Starting the game
time set day
effect clear @a[tag=!spec]
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamemode survival @a[tag=!spec]
scoreboard players set @a data 0
scoreboard players set @a ready 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0
scoreboard players set @a bingo_vote_end 0
scoreboard players set @a round_score_mb 0
worldborder set 24000000
execute as @e[tag=bingo_table_entry] run data merge entity @s {item_display:"gui"}

# Extra prompt
tellraw @a ["[",{"text":"⌚","color":"aqua"},"] ",{"text":"正在加载地图，这可能需要约","color":"yellow","bold":true},{"text":"15","color":"green","bold":true},{"text":"秒的时间......","color":"yellow","bold":true}]
tellraw @a {"text":"该游戏目前仍处于测试阶段，可能出现各种漏洞，请谅解！","color":"gray","italic":true}

# Moving bingo center
schedule function game:general/map_center/forceload_set 1t
schedule function game:general/map_center/move 150t
schedule function game:general/map_center/forceload_reset 300t

# Teleporting players to specific areas
execute if entity @e[tag=bingo_difficulty,scores={data=1}] run schedule function game:itemlist/randomize/tier_1 301t
execute if entity @e[tag=bingo_difficulty,scores={data=2}] run schedule function game:itemlist/randomize/tier_2 301t
execute if entity @e[tag=bingo_difficulty,scores={data=3}] run schedule function game:itemlist/randomize/tier_3 301t
schedule function game:itemlist/display/recurse 302t
execute if entity @e[tag=bingo_settings,scores={data=1}] run schedule function game:general/team_division/6v6 303t
execute if entity @e[tag=bingo_settings,scores={data=2}] run schedule function game:general/team_division/4v4v4 303t
execute if entity @e[tag=bingo_settings,scores={data=3}] run schedule function game:general/team_division/3v3v3v3 303t
schedule function game:general/teleport/team_spread 304t
schedule function game:general/switch_ingame 305t
schedule function game:general/teleport/supply 306t
schedule function game:general/teleport/set_spawn 307t

# BGM settings
tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Sands of Time ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:murder_mystery"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}