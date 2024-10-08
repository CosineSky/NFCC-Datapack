# Make tutorials always available to players
scoreboard players enable @a tutorials

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# Other items
execute if score EVENT_STARTED data matches 0 run item replace entity @a hotbar.2 with minecraft:emerald{HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1}],Unthrowable:1b,display:{Name:'[{"text":"特效装扮","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Coming Soon!","color":"red","bold":false}]'}}
execute if score EVENT_STARTED data matches 0 run item replace entity @a hotbar.3 with minecraft:beacon{HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1}],Unthrowable:1b,display:{Name:'[{"text":"等级","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Coming Soon!","color":"red","bold":false}]'}}
execute if score EVENT_STARTED data matches 0 run item replace entity @a hotbar.5 with minecraft:cookie{HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1}],Unthrowable:1b,display:{Name:'[{"text":"魔法烧饼","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Coming Soon!","color":"red","bold":false}]'}}

# Keep tutorial books in all players' hotbars 2mins before the event starts
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 2400.. run function hall:tutorials/give_book
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches ..2399 run item replace entity @a hotbar.6 with minecraft:barrier{Unthrowable:1b,display:{Name:'[{"text":"游戏指南","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"It\'s too late!","color":"red","bold":false}]'}}

# Loop of tutorials
execute as @a[limit=1,scores={tutorials=1}] run function hall:tutorials/show/bedwars
execute as @a[limit=1,scores={tutorials=2}] run function hall:tutorials/show/quakecraft
execute as @a[limit=1,scores={tutorials=3}] run function hall:tutorials/show/sheep_hoarders
execute as @a[limit=1,scores={tutorials=4}] run function hall:tutorials/show/battle_box
execute as @a[limit=1,scores={tutorials=5}] run function hall:tutorials/show/survival_games
execute as @a[limit=1,scores={tutorials=6}] run function hall:tutorials/show/journeys
execute as @a[limit=1,scores={tutorials=7}] run function hall:tutorials/show/tnt_tags
execute as @a[limit=1,scores={tutorials=8}] run function hall:tutorials/show/maniac_builders
execute as @a[limit=1,scores={tutorials=9}] run function hall:tutorials/show/murder_mystery
execute as @a[limit=1,scores={tutorials=10}] run function hall:tutorials/show/miniwalls
execute as @a[limit=1,scores={tutorials=11}] run function hall:tutorials/show/lava_dancers

# Keep the animation running
scoreboard players add @a[scores={tutorials=1..}] tutorials_time 1

# Play BGM while showing tutorials
execute as @a[scores={tutorials_time=1}] at @s run playsound minecraft:overtime master @s ~ ~ ~ 1 1