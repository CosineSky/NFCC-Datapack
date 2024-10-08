# Actionbar display
title @a actionbar ["",{"text":"当前比分情况","bold":true,"color":"yellow"}," | ",{"selector":"@a[limit=1,tag=first]","color":"red"}," - ",{"score":{"name":"BRIDGE_RED","objective":"data"},"color":"red","bold":true},{"text":"⭐","color":"dark_red"},{"text":" v.s. ","color":"yellow","bold":true},{"selector":"@a[limit=1,tag=second]","color":"blue"}," - ",{"score":{"name":"BRIDGE_BLUE","objective":"data"},"color":"blue","bold":true},{"text":"⭐","color":"dark_blue"}]

# Removing all items in game
kill @e[type=item]

# Kills detection
function game:general/kills/kill
function game:general/kills/void

# Judgement of scoring
execute as @a[tag=first,gamemode=!spectator] at @s if block ~ ~ ~ minecraft:warped_slab if entity @e[tag=bridge_goal_blue,distance=..3] run function game:general/scored/red
execute as @a[tag=second,gamemode=!spectator] at @s if block ~ ~ ~ minecraft:mangrove_slab if entity @e[tag=bridge_goal_red,distance=..3] run function game:general/scored/blue
