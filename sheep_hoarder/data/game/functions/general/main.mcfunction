# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 5940.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:sheep_hoarders
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:sheep_hoarders master @s ~ ~ ~ 0.2 1

# Actions on death
gamemode spectator @a[scores={death_tick=0}]
tp @a[scores={death_tick=0}] -547 79 48
title @a[scores={death_tick=0}] title {"text":"你死了!","color":"red","bold":true}
title @a[scores={death_tick=0,sheep_absorbed=1}] subtitle {"text":"你同时失去了羊的灵魂...","color":"yellow","bold":true}
scoreboard players set @a[scores={death_tick=0}] sheep_absorbed 0
title @a[scores={death_tick=0}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"5 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=20}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"4 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=40}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"3 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=60}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"2 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=80}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"1 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=100}] title {"text":"你复活了!","color":"green","bold":true}
title @a[scores={death_tick=100}] subtitle " "
clear @a[scores={death_tick=100}]
execute as @a[scores={death_tick=100}] run function game:ingame/armor
execute as @a[scores={death_tick=100}] run function game:ingame/hotbar
gamemode adventure @a[scores={death_tick=100}]
tp @a[scores={death_tick=100},team=red] @e[tag=sheep_base_red,limit=1]
tp @a[scores={death_tick=100},team=blue] @e[tag=sheep_base_blue,limit=1]
tp @a[scores={death_tick=100},team=green] @e[tag=sheep_base_green,limit=1]
tp @a[scores={death_tick=100},team=yellow] @e[tag=sheep_base_yellow,limit=1]

# Sheep summoner
execute as @e[tag=sheep_summoner] at @s run particle minecraft:firework ~ ~ ~ 2 2 2 0.1 4
scoreboard players remove @e[tag=sheep_summoner] tick_elapsed 1
execute as @e[tag=sheep_summoner] run scoreboard players operation @s sec_elapsed = @s tick_elapsed
execute as @e[tag=sheep_summoner] run scoreboard players operation @s sec_elapsed /= CONST_20 data
execute as @e[tag=sheep_summoner] if score @s tick_elapsed matches 0 run tellraw @a [{"text":"[","color":"white"},{"text":"⚠","color":"yellow"},{"text":"] "},{"text":"神庙中心生成了一只新的绵羊！","color":"yellow"}]
execute as @e[tag=sheep_summoner] at @s if score @s tick_elapsed matches 0 run summon minecraft:sheep ~ ~ ~ {Color:0b,AbsorptionAmount:1000f,NoAI:1b}
execute as @e[tag=sheep_summoner] if score @s tick_elapsed matches ..0 run scoreboard players set @s tick_elapsed 555
# title @a actionbar [{"text":"下一只羊将于","color":"yellow","bold":true},{"score":{"name":"@e[tag=sheep_summoner,limit=1]","objective":"sec_elapsed"},"color":"green"},{"text":"秒后在神庙生成！"}]

effect give @e[type=minecraft:sheep] minecraft:slowness 15 10 true
title @a[gamemode=adventure] actionbar ["",{"text":"  红队：","color":"red","bold":true},{"score":{"name":"@e[tag=sheep_base_red,limit=1]","objective":"data"}},{"text":"  蓝队：","color":"blue","bold":true},{"score":{"name":"@e[tag=sheep_base_blue,limit=1]","objective":"data"}},{"text":"  绿队：","color":"green","bold":true},{"score":{"name":"@e[tag=sheep_base_green,limit=1]","objective":"data"}},{"text":"  黄队：","color":"yellow","bold":true},{"score":{"name":"@e[tag=sheep_base_yellow,limit=1]","objective":"data"}}," | ",{"text":"下一只羊将于","color":"yellow","bold":true},{"score":{"name":"@e[tag=sheep_summoner,limit=1]","objective":"sec_elapsed"},"color":"green"},{"text":"秒后生成！","color":"yellow","bold":true}]
title @a[gamemode=spectator] actionbar ["",{"text":"  红队：","color":"red","bold":true},{"score":{"name":"@e[tag=sheep_base_red,limit=1]","objective":"data"}},{"text":"  蓝队：","color":"blue","bold":true},{"score":{"name":"@e[tag=sheep_base_blue,limit=1]","objective":"data"}},{"text":"  绿队：","color":"green","bold":true},{"score":{"name":"@e[tag=sheep_base_green,limit=1]","objective":"data"}},{"text":"  黄队：","color":"yellow","bold":true},{"score":{"name":"@e[tag=sheep_base_yellow,limit=1]","objective":"data"}}," | ",{"text":"你现在是旁观者！","bold":true}]

# Check if a game is over
scoreboard players add GAME tick_elapsed 1

# Lock player's location on starting
execute if score GAME tick_elapsed matches ..100 as @e[tag=sheep_base_red] at @s run tp @a[team=red,distance=..2] @s
execute if score GAME tick_elapsed matches ..100 as @e[tag=sheep_base_blue] at @s run tp @a[team=blue,distance=..2] @s
execute if score GAME tick_elapsed matches ..100 as @e[tag=sheep_base_green] at @s run tp @a[team=green,distance=..2] @s
execute if score GAME tick_elapsed matches ..100 as @e[tag=sheep_base_yellow] at @s run tp @a[team=yellow,distance=..2] @s

# Regeneration near bases
execute as @e[tag=sheep_base_red] at @s run effect give @a[team=red,distance=..6] regeneration 1 0 true
execute as @e[tag=sheep_base_blue] at @s run effect give @a[team=blue,distance=..6] regeneration 1 0 true
execute as @e[tag=sheep_base_green] at @s run effect give @a[team=green,distance=..6] regeneration 1 0 true
execute as @e[tag=sheep_base_yellow] at @s run effect give @a[team=yellow,distance=..6] regeneration 1 0 true

# Game process
function game:general/process