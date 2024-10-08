
execute if score ANGLE1 yamato_angle matches 0 run function yamato:func1etc/func11
execute if score ANGLE1 yamato_angle matches 120 run function yamato:func1etc/func12
execute if score ANGLE1 yamato_angle matches 240 run function yamato:func1etc/func13


scoreboard players add ANGLE1 yamato_angle 120
execute unless score ANGLE1 yamato_angle matches 360 run schedule function yamato:func1 0.05s
execute if score ANGLE1 yamato_angle matches 360 run kill @e[tag=yamatoangle1]