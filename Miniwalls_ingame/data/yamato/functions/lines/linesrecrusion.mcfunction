tag @e[tag=yamatolines,sort=random,limit=1] add yamatostart
execute as @e[tag=yamatostart] at @s run tag @e[tag=yamatolines,tag=!yamatostart,distance=9..,sort=random,limit=1] add yamatoend
execute as @e[tag=yamatostart] at @s run summon armor_stand ~ ~ ~ {Tags:[yamatotrace],NoGravity:1b}
execute as @e[tag=yamatotrace] at @s run tp @s ~ ~ ~ facing entity @e[tag=yamatoend,limit=1]
execute if entity @e[tag=yamatoend,tag=yamatostart] run say 1
function yamato:lines/stepinrecrusion
kill @e[tag=yamatotrace]
tag @e[tag=yamatostart] remove yamatostart
tag @e[tag=yamatoend] remove yamatoend

tag @e[tag=yamatolines,sort=random,limit=1] add yamatostart
execute as @e[tag=yamatostart] at @s run tag @e[tag=yamatolines,tag=!yamatostart,distance=12..,sort=random,limit=1] add yamatoend
execute as @e[tag=yamatostart] at @s run summon armor_stand ~ ~ ~ {Tags:[yamatotrace],NoGravity:1b}
execute as @e[tag=yamatotrace] at @s run tp @s ~ ~ ~ facing entity @e[tag=yamatoend,limit=1]
execute if entity @e[tag=yamatoend,tag=yamatostart] run say 1
function yamato:lines/stepinrecrusion
execute at @e[tag=yamatostart,limit=1] run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
execute if score TIMES yamato_line_times matches 29 run execute at @e[tag=releaser,limit=1] run playsound entity.villager.death player @a ~ ~ ~ 1.5 1
kill @e[tag=yamatotrace]
tag @e[tag=yamatostart] remove yamatostart
tag @e[tag=yamatoend] remove yamatoend

scoreboard players add TIMES yamato_line_times 1

execute if score TIMES yamato_line_times matches 30 run kill @e[tag=yamatolines]
execute unless score TIMES yamato_line_times matches 30 run schedule function yamato:lines/linesrecrusion 0.05s 
