# BGM Settings
execute if score INGAME data matches 1 run scoreboard players add BGM tick_elapsed 1
execute if score INGAME data matches 1 run execute if score BGM tick_elapsed matches 7620.. run scoreboard players set BGM tick_elapsed 0
execute if score INGAME data matches 1 run execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:battle_box
execute if score INGAME data matches 1 run execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:battle_box master @s ~ ~ ~ 0.2 1

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}
execute if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.0 with air

# Waiting room options
execute if score STARTED data matches 1 if score INGAME data matches 0 run clear @a
execute if score STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true
execute if score EVENT_STARTED data matches 0 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
execute if score EVENT_STARTED data matches 1 if score PLAYED_BATTLE_BOX data matches 0..6 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
clear @a[scores={ready=1}]

# Getting ready
execute as @a[scores={carrot_stick=1,ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"✔","color":"green"},{"text":"] "},{"selector":"@s","color":"gold"},{"text":" 已经对胜利胸有成竹！"}]
scoreboard players set @a[scores={carrot_stick=1}] ready 1
scoreboard players set @a[scores={carrot_stick=1,ready=1}] carrot_stick 0

# Starting game
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set STARTED data 1
execute unless entity @a[tag=!spec,scores={ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"⚔","color":"yellow"},{"text":"] "},{"text":" 所有玩家准备就绪，游戏即将开始！","color":"green"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a reset
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a title {"text":"游戏即将开始！","color":"green","bold":true}
execute if score CHOSEN_MAP data matches 101 run execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Abstract Lava","color":"gold"}]
execute if score CHOSEN_MAP data matches 102 run execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Tic-Tac-Toe","color":"gold"}]
execute if score CHOSEN_MAP data matches 103 run execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Professor's Chamber","color":"gold"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run schedule function test:game/start_game 5s
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set @a ready 0