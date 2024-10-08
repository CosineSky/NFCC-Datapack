scoreboard players set @s carrot_on_a_stick 0
scoreboard players set @s tick_elapsed 1000

effect give @s speed 9 0 true
effect give @s strength 9 0 true
execute at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.25 1 0.25 1 100
execute at @s run playsound minecraft:entity.zombie.death master @a[distance=..4] ~ ~ ~ 3 0.5

execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~3.000 ~ ~0.000 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.954 ~ ~0.521 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.819 ~ ~1.026 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.598 ~ ~1.500 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.298 ~ ~1.928 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.928 ~ ~2.298 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.500 ~ ~2.598 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.026 ~ ~2.819 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~0.521 ~ ~2.954 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}

execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~0.000 ~ ~3.000 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.954 ~ ~0.521 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.819 ~ ~1.026 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.598 ~ ~1.500 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.298 ~ ~1.928 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.928 ~ ~2.298 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.500 ~ ~2.598 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.026 ~ ~2.819 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-0.521 ~ ~2.954 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}

execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~0.000 ~ ~-3.000 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.954 ~ ~-0.521 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.819 ~ ~-1.026 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.598 ~ ~-1.500 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~2.298 ~ ~-1.928 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.928 ~ ~-2.298 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.500 ~ ~-2.598 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~1.026 ~ ~-2.819 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~0.521 ~ ~-2.954 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}

execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-3.000 ~ ~0.000 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.954 ~ ~-0.521 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.819 ~ ~-1.026 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.598 ~ ~-1.500 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-2.298 ~ ~-1.928 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.928 ~ ~-2.298 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.500 ~ ~-2.598 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-1.026 ~ ~-2.819 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @s at @s in game:custom positioned ~ ~5 ~ run summon minecraft:armor_stand ~-0.521 ~ ~-2.954 {Tags:["zombie_ability"],AbsorptionAmount:0.5f,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}

execute as @e[type=minecraft:armor_stand,tag=zombie_ability] in game:custom at @s run tp @s ~ ~ ~ facing entity @s
# execute at @s run execute as @e[tag=mob,distance=..5] store result entity @s Motion[1] double -1 run data get entity @s Motion[1]


tellraw @s ["[⭐] ",{"text":"你释放了僵尸的","color":"yellow"},{"text":"嗜血","color":"dark_green","bold":true},{"text":"主动技！","color":"yellow"}]