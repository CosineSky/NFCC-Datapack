
execute if score ANGLE3 yamato_angle matches 0 run function yamato:func3etc/func11
execute if score ANGLE3 yamato_angle matches 120 run function yamato:func3etc/func12
execute if score ANGLE3 yamato_angle matches 240 run function yamato:func3etc/func13


scoreboard players add ANGLE3 yamato_angle 120
execute unless score ANGLE3 yamato_angle matches 360 run schedule function yamato:func3 0.05s
execute if score ANGLE3 yamato_angle matches 360 run kill @e[tag=yamatoangle3]