# Prevent vanilla bgm from playing
stopsound @a music

# Setting turtles' health
execute as @e[type=minecraft:turtle] run data merge entity @s {Health:20.0f}

# Minigames in hub
function game:hub/minigames/bat_shooting/loop

# Clear arrows
execute positioned 449 165 -548 run kill @e[type=arrow,nbt={inGround:1b},distance=..100]

# Effects
execute positioned 449 165 -548 run effect give @a[distance=..100] minecraft:speed 2 2 true
execute positioned 449 165 -548 run effect give @a[distance=..100] minecraft:saturation 2 5 true
execute positioned 449 165 -548 run effect give @a[distance=..100] minecraft:regeneration 2 5 true