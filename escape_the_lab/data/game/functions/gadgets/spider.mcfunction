# Disables spiders' noise and AI
execute as @e[tag=pillar_spider,type=minecraft:cave_spider] run data merge entity @s {Silent:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"Poisonous Spider","color":"gray"}',CustomNameVisible:1b,Invulnerable:1b}

# Displays the fire particles
execute as @e[tag=pillar_spider] at @s run particle dust 0 0 0 1 ~ ~0.2 ~ 0.01 0.01 0.01 0.002 2

# Sets the spiders' default moving direction
tag @e[tag=pillar_spider,type=minecraft:cave_spider,tag=!l,tag=!r] add r

# Moves the spiders
execute as @e[tag=pillar_spider,tag=l,scores={tick_elapsed=0}] at @s facing entity @e[tag=sp,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.9
execute as @e[tag=pillar_spider,tag=r,scores={tick_elapsed=0}] at @s facing entity @e[tag=sp,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.9

# Changes the spiders' directions
execute as @e[tag=pillar_spider,tag=r] at @s if entity @e[tag=sp,tag=r,distance=..0.5] run function game:gadgets/universal/change_to_left
execute as @e[tag=pillar_spider,tag=l] at @s if entity @e[tag=sp,tag=l,distance=..0.5] run function game:gadgets/universal/change_to_right

# Applies negative effects to players nearby
execute as @e[tag=pillar_spider] at @s run effect give @a[distance=..2.33,scores={journey_level=6}] minecraft:blindness 2 1 true
execute as @e[tag=pillar_spider] at @s run effect give @a[distance=..2.33,scores={journey_level=6}] minecraft:slowness 2 2 true

# Rest ticks
scoreboard players remove @e[tag=pillar_spider,scores={tick_elapsed=1..}] tick_elapsed 1