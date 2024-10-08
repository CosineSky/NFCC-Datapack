
execute if score ANGLE2 yamato_angle matches 0 run function yamato:func2etc/func11
execute if score ANGLE2 yamato_angle matches 120 run function yamato:func2etc/func12
execute if score ANGLE2 yamato_angle matches 240 run function yamato:func2etc/func13


scoreboard players add ANGLE2 yamato_angle 120
execute unless score ANGLE2 yamato_angle matches 360 run schedule function yamato:func2 0.05s
execute if score ANGLE2 yamato_angle matches 360 run kill @e[tag=yamatoangle2]