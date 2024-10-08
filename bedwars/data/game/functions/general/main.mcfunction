# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# Game time
scoreboard players add GAME tick_elapsed 1
function game:general/process

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 5100.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:bedwars
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:bedwars master @s ~ ~ ~ 0.2 1

# Actions on death
gamemode spectator @a[scores={death_tick=0}]
tp @a[scores={death_tick=0}] -722 169 -705 0 90
title @a[scores={death_tick=0}] title {"text":"你死了!","color":"red","bold":true}
title @a[scores={death_tick=0,respawnable=0}] subtitle [{"text":"由于床已被摧毁，你无法复活。","color":"yellow"}]
title @a[scores={death_tick=0,respawnable=1}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"5 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=20,respawnable=1}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"4 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=40,respawnable=1}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"3 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=60,respawnable=1}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"2 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=80,respawnable=1}] subtitle [{"text":"将在 ","color":"yellow"},{"text":"1 ","color":"green"},{"text":"秒内复活..."}]
title @a[scores={death_tick=100,respawnable=1}] title {"text":"你复活了!","color":"green","bold":true}
effect give @a[scores={death_tick=100,respawnable=1}] regeneration 1 5 true
effect give @a[scores={death_tick=100,respawnable=1}] saturation 1 5 true
title @a[scores={death_tick=100,respawnable=1}] subtitle " "
clear @a[scores={death_tick=100,respawnable=1}]
give @a[scores={death_tick=100,respawnable=1}] minecraft:wooden_sword{WoodenSword:1,HideFlags:63,CanDestroy:["#minecraft:breakable"],Unbreakable:1b,display:{Name:'{"text":"§f木剑"}',Lore:['{"text":"§7你最原始的武器！"}']}}

# Removing skill tags
tag @a[scores={death_tick=100,respawnable=1}] remove warrior
tag @a[scores={death_tick=100,respawnable=1}] remove iron_heart
tag @a[scores={death_tick=100,respawnable=1}] remove soul_siphon
tag @a[scores={death_tick=100,respawnable=1}] remove combo_master
tag @a[scores={death_tick=100,respawnable=1}] remove dream_destroyer
tag @a[scores={death_tick=100,respawnable=1}] remove legion_commander

# Teleporting to spawn point
tp @a[scores={death_tick=100,respawnable=1},team=red] @e[tag=red_spawn,limit=1]
tp @a[scores={death_tick=100,respawnable=1},team=blue] @e[tag=blue_spawn,limit=1]
tp @a[scores={death_tick=100,respawnable=1},team=green] @e[tag=green_spawn,limit=1]
tp @a[scores={death_tick=100,respawnable=1},team=yellow] @e[tag=yellow_spawn,limit=1]
gamemode adventure @a[scores={death_tick=100,respawnable=1}]
execute as @a[scores={death_tick=101,respawnable=1}] run function game:ingame/armor

# Actionbar display
title @a[tag=spec] actionbar {"text":"你现在是旁观者！","bold":true}

# Count the players
execute store result score ALIVE_RED data run execute if entity @a[gamemode=adventure,team=red]
execute store result score ALIVE_BLUE data run execute if entity @a[gamemode=adventure,team=blue]
execute store result score ALIVE_GREEN data run execute if entity @a[gamemode=adventure,team=green]
execute store result score ALIVE_YELLOW data run execute if entity @a[gamemode=adventure,team=yellow]
title @a[tag=!spec] actionbar ["",{"text":"  红队：","color":"red","bold":true},{"score":{"name":"ALIVE_RED","objective":"data"}},{"text":"  蓝队：","color":"blue","bold":true},{"score":{"name":"ALIVE_BLUE","objective":"data"}},{"text":"  绿队：","color":"green","bold":true},{"score":{"name":"ALIVE_GREEN","objective":"data"}},{"text":"  黄队：","color":"yellow","bold":true},{"score":{"name":"ALIVE_YELLOW","objective":"data"}}]

# Check if a game is over
execute if entity @a[team=red,gamemode=adventure] unless entity @a[team=blue,gamemode=adventure] unless entity @a[team=blue,scores={respawnable=1}] unless entity @a[team=green,gamemode=adventure] unless entity @a[team=green,scores={respawnable=1}] unless entity @a[team=yellow,gamemode=adventure] unless entity @a[team=yellow,scores={respawnable=1}] run function game:general/won/red
execute unless entity @a[team=red,gamemode=adventure] unless entity @a[team=red,scores={respawnable=1}] if entity @a[team=blue,gamemode=adventure] unless entity @a[team=green,gamemode=adventure] unless entity @a[team=green,scores={respawnable=1}] unless entity @a[team=yellow,gamemode=adventure] unless entity @a[team=yellow,scores={respawnable=1}] run function game:general/won/blue
execute unless entity @a[team=red,gamemode=adventure] unless entity @a[team=red,scores={respawnable=1}] unless entity @a[team=blue,gamemode=adventure] unless entity @a[team=blue,scores={respawnable=1}] if entity @a[team=green,gamemode=adventure] unless entity @a[team=yellow,gamemode=adventure] unless entity @a[team=yellow,scores={respawnable=1}] run function game:general/won/green
execute unless entity @a[team=red,gamemode=adventure] unless entity @a[team=red,scores={respawnable=1}] unless entity @a[team=blue,gamemode=adventure] unless entity @a[team=blue,scores={respawnable=1}] unless entity @a[team=green,gamemode=adventure] unless entity @a[team=green,scores={respawnable=1}] if entity @a[team=yellow,gamemode=adventure] run function game:general/won/yellow

# Prevent broken blocks from not being able to be placed down again
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:white_terracotta"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:end_stone"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:ice"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] run data merge entity @s {Item:{tag:{HideFlags:63,CanPlaceOn:["#game:placable"]}}}

