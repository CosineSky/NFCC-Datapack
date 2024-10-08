
execute if score ANGLE4 yamato_angle matches 0 run function yamato:func4etc/func11
execute if score ANGLE4 yamato_angle matches 120 run function yamato:func4etc/func12
execute if score ANGLE4 yamato_angle matches 240 run function yamato:func4etc/func13


scoreboard players add ANGLE4 yamato_angle 120
execute unless score ANGLE4 yamato_angle matches 360 run schedule function yamato:func4 0.05s
execute if score ANGLE4 yamato_angle matches 360 run kill @e[tag=yamatoangle4]