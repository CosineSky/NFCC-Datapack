scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle],NoGravity:1b} 
function yamato:func

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE1 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle1],NoGravity:1b} 
schedule function yamato:func1 0.05s

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE2 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle2],NoGravity:1b}
execute as @e[tag=yamatoangle2] at @s run tp @s ~ ~ ~ ~240 ~
schedule function yamato:func2 0.1s

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE3 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle3],NoGravity:1b}
execute as @e[tag=yamatoangle3] at @s run tp @s ~ ~ ~ ~120 ~
schedule function yamato:func3 0.15s

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE4 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle4],NoGravity:1b} 
execute as @e[tag=yamatoangle4] at @s run tp @s ~ ~ ~ ~60 ~
schedule function yamato:func4 0.2s

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE5 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle5],NoGravity:1b}
execute as @e[tag=yamatoangle5] at @s run tp @s ~ ~ ~ ~180 ~
schedule function yamato:func5 0.25s

scoreboard objectives add yamato_angle dummy "angle"
scoreboard players set ANGLE6 yamato_angle 0
execute as @a[tag=releaser] at @s run summon marker ~ ~ ~ {Tags:[yamatoangle6],NoGravity:1b}
execute as @e[tag=yamatoangle6] at @s run tp @s ~ ~ ~ ~300 ~
schedule function yamato:func6 0.3s

#scoreboard players add TIME yamato_time 1
#execute unless score TIME yamato_time matches 60 run schedule function yamato:test 0.2s

