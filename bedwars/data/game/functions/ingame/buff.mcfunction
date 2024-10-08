# Removing thrown buff items
execute as @e[type=item,nbt={Item:{tag:{Warrior:1}}}] at @s run effect give @a[limit=1,sort=nearest] minecraft:health_boost 114514 0 true
kill @e[type=item,nbt={Item:{tag:{buff:1}}}]

# Iron Heart
effect give @a[tag=iron_heart,scores={health=..8}] minecraft:resistance 2 0 true

# Dream Destroyer
execute as @e[tag=red_bed] at @s run effect give @a[tag=dream_destroyer,distance=..15] minecraft:haste 5 0 true
execute as @e[tag=blue_bed] at @s run effect give @a[tag=dream_destroyer,distance=..15] minecraft:haste 5 0 true
execute as @e[tag=green_bed] at @s run effect give @a[tag=dream_destroyer,distance=..15] minecraft:haste 5 0 true
execute as @e[tag=yellow_bed] at @s run effect give @a[tag=dream_destroyer,distance=..15] minecraft:haste 5 0 true

# Legion Commander
# execute as @a[tag=legion_commander] at @s if entity @a[distance=..10] run effect give @s minecraft:strength 3 0 true

# Combo Master & Soul Siphon -> see rewards.

# Clearing items
clear @a minecraft:iron_sword{ComboMaster:1}
clear @a minecraft:redstone{SoulSiphon:1}
clear @a minecraft:netherite_helmet{LegionCommander:1}
clear @a minecraft:red_bed{DreamDestroyer:1}
clear @a minecraft:iron_ingot{IronHeart:1}
clear @a minecraft:golden_apple{Warrior:1}
