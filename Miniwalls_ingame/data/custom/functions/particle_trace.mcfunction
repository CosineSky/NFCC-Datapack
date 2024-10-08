execute at @e[tag=start] run particle totem_of_undying ~ ~ ~ 1 1 1 0.3 50 force
execute as @e[tag=start] at @s run tp @s ^ ^ ^1.414
execute as @e[tag=end] at @s if entity @e[tag=start,distance=..2] run kill @e[tag=start]
execute as @e[tag=end] at @s unless entity @e[tag=start] run kill @e[tag=end]
execute as @e[tag=end] at @s unless entity @e[tag=start,distance=..1] run schedule function custom:particle_trace 0.05s