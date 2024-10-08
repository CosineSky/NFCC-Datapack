execute if score INGAME data matches 1 run function game:general/main

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# Waiting room options
execute if score STARTED data matches 1 if score INGAME data matches 0 run clear @a
execute if score STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 5000.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:survival_games_dm
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:survival_games_dm master @s ~ ~ ~ 0.2 1

# Starting game
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set STARTED data 1
execute unless entity @a[tag=!spec,scores={ready=0}] as @a run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a reset
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a title {"text":"最终对决即将开始！","color":"red","bold":true}
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Fruit Basket","color":"gold"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run schedule function game:general/start_game 5s
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set @a ready 0

# Particles near goals
execute as @e[tag=bridge_goal_red] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 0.1 8
execute as @e[tag=bridge_goal_blue] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 1 1 1 0.1 8