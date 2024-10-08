# Sets the fires' default moving direction
tag @e[tag=pillar_fire,type=minecraft:marker,tag=!l,tag=!r] add r

# Displays the fire particles
execute as @e[tag=pillar_fire,tag=l] at @s run particle flame ~ ~ ~ 0.01 0.01 0.01 0.002 1
execute as @e[tag=pillar_fire,tag=r] at @s run particle soul_fire_flame ~ ~ ~ 0.01 0.01 0.01 0.002 1

# Moves the flames
execute as @e[tag=pillar_fire,tag=l] at @s facing entity @e[tag=fp,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.25
execute as @e[tag=pillar_fire,tag=r] at @s facing entity @e[tag=fp,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.25

# Changes the flames' directions
execute as @e[tag=pillar_fire,tag=r] at @s if entity @e[tag=fp,tag=r,distance=..0.5] run function game:gadgets/universal/change_to_left
execute as @e[tag=pillar_fire,tag=l] at @s if entity @e[tag=fp,tag=l,distance=..0.5] run function game:gadgets/universal/change_to_right

# Applies negative effects to players nearby
execute as @a[tag=!spec,gamemode=!spectator] at @s if entity @e[tag=pillar_fire,distance=..2] run playsound entity.player.hurt_on_fire master @s ~ ~ ~ 1 1
execute as @a[tag=!spec,gamemode=!spectator] at @s if entity @e[tag=pillar_fire,distance=..2] run scoreboard players set @s fungus_stick 1