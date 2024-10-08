execute as @e[type=parrot] at @s run playsound entity.generic.explode master @a[distance=..8] ~ ~ ~ 1 1
execute as @e[type=parrot] at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.01 10
execute as @e[type=parrot] at @s run effect give @a[distance=..2.8] instant_damage 1 10 true
kill @e[type=parrot]
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]