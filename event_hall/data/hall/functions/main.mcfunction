# Waiting room & becoming specs
execute if score EVENT_STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true
execute if score EVENT_STARTED data matches 0 run function hall:spec


# Countdown
execute if score PAUSED data matches 0 run scoreboard players remove COUNT_DOWN tick_elapsed 1
execute if score PAUSED data matches 0 if score COUNT_DOWN tick_elapsed matches -640.. run function hall:clock/countdown_prompts
execute if score PAUSED data matches 0 if score COUNT_DOWN tick_elapsed matches -640.. run function hall:clock/clock_tick


# Voting
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 0 run function hall:vote/start_voting
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -640..-40 run function hall:vote/loop
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -640..-40 run kill @e[type=item]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -641 run function hall:vote/end_voting
execute if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 1 run datapack enable "file/rainbow_rhythms"
execute if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 0 run function hall:lobbies/enter_bridge_duels


# BGM Settings (5mins till event starts)
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 1..2400 run scoreboard players add BGM tick_elapsed 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 1..2400 if score BGM tick_elapsed matches 1500.. run scoreboard players set BGM tick_elapsed 0
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 1..2400 if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:waiting_room
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 1..2400 if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:waiting_room master @s ~ ~ ~ 0.2 1


# Actionbar display
execute if score EVENT_STARTED data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"准备阶段","color":"green","bold":true}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 0 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"","color":"green"},{"text":"[I] [II] [III] [IV] [V] [VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 1 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] ","color":"green"},{"text":"[II] [III] [IV] [V] [VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 2 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] ","color":"green"},{"text":"[III] [IV] [V] [VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 3 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] [III] ","color":"green"},{"text":"[IV] [V] [VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 4 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] [III] [IV] ","color":"green"},{"text":"[V] [VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 5 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] [III] [IV] [V] ","color":"green"},{"text":"[VI] [⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] [III] [IV] [V] [VI] ","color":"green"},{"text":"[⚔]","color":"red"}," ]-"]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 7 if score INGAME data matches 0 if score MWINGAME data matches 0 run title @a actionbar ["-[ ",{"text":"小游戏联赛进度：","color":"gold","bold":true},{"text":"[I] [II] [III] [IV] [V] [VI] [⚔]","color":"green"},{"text":"","color":"red"}," ]-"]


# Cookie rain
# execute if score COOKIE_RAIN tick_elapsed matches 1.. run scoreboard players remove COOKIE_RAIN tick_elapsed 1
# execute if score COOKIE_RAIN tick_elapsed matches 1.. run spreadplayers -1965 -41 30 30 true @e[tag=cookie_rain]
# execute if score COOKIE_RAIN tick_elapsed matches 1.. as @e[tag=cookie_rain] at @s run summon item ~ ~-3 ~ {Age:5900,PickupDelay:32767,Item:{id:"minecraft:cookie",Count:1b}}


# Other settings
# execute if score EVENT_STARTED data matches 0 run function hall:special_tags
execute if score EVENT_STARTED data matches 0 run function hall:tutorials/loop