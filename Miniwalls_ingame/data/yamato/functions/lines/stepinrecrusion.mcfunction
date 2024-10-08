execute as @e[tag=yamatotrace] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=yamatotrace] at @s run particle wax_off ~ ~ ~ 0 0 0 0.001 3 force
#execute as @e[tag=yamatoend] at @s if entity @e[tag=yamatotrace,distance=..0.3] run kill @e[tag=yamatotrace]
#execute as @e[tag=yamatoend] at @s if entity @e[tag=yamatotrace,distance=..0.3] run tag @e[tag=yamatostart] remove yamatostart
#execute as @e[tag=yamatoend] at @s unless entity @e[tag=yamatostart] run tag @e[tag=yamatoend] remove yamatoend
execute as @e[tag=yamatotrace] at @s unless entity @e[tag=yamatoend,distance=..1] run function yamato:lines/stepinrecrusion

