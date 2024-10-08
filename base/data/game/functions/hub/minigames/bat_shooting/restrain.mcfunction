execute as @e[type=marker,tag=target_bat_center] at @s if entity @e[type=bat,tag=target_bat,distance=5..] run tp @e[tag=target_bat,distance=5..] @s
execute as @e[tag=target_bat,type=minecraft:bat] run data merge entity @s {Health:20.0f,AbsorptionAmount:100.0f}
execute as @e[tag=target_bat,type=minecraft:bat,nbt={HurtTime:1s}] at @s run particle dust 1 0 0 1 ~ ~0.2 ~ 0.15 0.15 0.15 0.01 15
execute as @e[tag=target_bat,type=minecraft:bat,nbt={HurtTime:1s}] on attacker run title @s actionbar {"text":"You successfully shot a vampiric bat! Nice!","color":"green"}
execute as @e[tag=target_bat,type=minecraft:bat,nbt={HurtTime:1s}] on attacker run execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2