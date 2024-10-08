scoreboard players set @s fungus_stick 0

execute if score @s tick_elapsed matches 1.. run tellraw @s [{"text":"[⚠] "},{"text":"该技能仍在冷却中!","color":"red"}]
execute at @s if score @s tick_elapsed matches 1.. run playsound minecraft:block.anvil.land voice @s ~ ~ ~ 1 1

execute if score @s tick_elapsed matches 0 run function game:abilities/skeleton/trigger

