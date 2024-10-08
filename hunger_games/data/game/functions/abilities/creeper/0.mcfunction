execute as @e[tag=creeper_ability,nbt={AbsorptionAmount:0.1f}] at @s run particle minecraft:explosion ~ ~1 ~ 0.1 0.1 0.1 1 4
execute as @e[tag=creeper_ability,nbt={AbsorptionAmount:0.1f}] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.1 0.1 0.1 0.1 50

execute as @e[tag=creeper_ability,nbt={AbsorptionAmount:0.1f}] at @s run effect give @a[distance=..4] instant_damage 1 1 true

execute as @e[tag=creeper_ability,nbt={AbsorptionAmount:0.1f}] at @s run playsound minecraft:entity.generic.explode voice @a[distance=..4] ~ ~ ~ 1 1

kill @e[tag=creeper_ability]