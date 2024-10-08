# Sets the fires' default moving direction
tag @e[tag=crusher_mover,type=minecraft:marker,tag=!l,tag=!r] add r

# Changes the blocks of crushers
execute as @e[tag=crusher_mover,tag=l] at @s run fill ~ ~-1 ~ ~ ~-2 ~-1 air
execute as @e[tag=crusher_mover,tag=r] at @s run fill ~ ~-1 ~ ~ ~-2 ~-1 polished_andesite

# Moves the crushers
execute as @e[tag=crusher_mover,tag=1,tag=l] at @s facing entity @e[tag=crusher,tag=1,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=1,tag=r] at @s facing entity @e[tag=crusher,tag=1,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=2,tag=l] at @s facing entity @e[tag=crusher,tag=2,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=2,tag=r] at @s facing entity @e[tag=crusher,tag=2,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=3,tag=l] at @s facing entity @e[tag=crusher,tag=3,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=3,tag=r] at @s facing entity @e[tag=crusher,tag=3,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=4,tag=l] at @s facing entity @e[tag=crusher,tag=4,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=4,tag=r] at @s facing entity @e[tag=crusher,tag=4,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=5,tag=l] at @s facing entity @e[tag=crusher,tag=5,tag=l,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58
execute as @e[tag=crusher_mover,tag=5,tag=r] at @s facing entity @e[tag=crusher,tag=5,tag=r,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.58

# Changes the spiders' directions
execute as @e[tag=crusher_mover,tag=r] at @s if entity @e[tag=crusher,tag=r,distance=..0.7] run function game:gadgets/universal/change_to_left
execute as @e[tag=crusher_mover,tag=l] at @s if entity @e[tag=crusher,tag=l,distance=..0.7] run function game:gadgets/universal/change_to_right
