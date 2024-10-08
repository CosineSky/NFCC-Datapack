execute as @a[tag=!spec,gamemode=!spectator,scores={journey_level=3}] at @s run execute unless entity @e[tag=light_marker,distance=..0.1] run effect give @s blindness 2 1 true
execute as @a[tag=!spec,gamemode=!spectator,scores={journey_level=3}] at @s run execute unless entity @e[tag=light_marker,distance=..0.1] run scoreboard players set @s fungus_stick 1

execute as @a[tag=!spec,gamemode=!spectator,scores={journey_level=9}] at @s run execute unless entity @e[tag=light_marker,distance=..0.1] run effect give @s blindness 2 1 true
execute as @a[tag=!spec,gamemode=!spectator,scores={journey_level=9}] at @s run execute unless entity @e[tag=light_marker,distance=..0.1] run scoreboard players set @s fungus_stick 1