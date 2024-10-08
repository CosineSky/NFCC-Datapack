execute at @e[type=fishing_bobber,limit=1] as @e[type=fishing_bobber,limit=1] run tag @s add have_been_detected
execute at @e[type=fishing_bobber,tag=have_been_detected] run tag @p[tag=!spec] add shoot
kill @e[type=fishing_bobber,tag=have_been_detected]

execute if score @a[tag=shoot,limit=1] shootingCD matches 0 run function ingame:recruseshoot
execute as @a[tag=shoot,limit=1] if score @s shootingCD matches 0 run scoreboard players add @s shootingCD 20

tag @a[tag=shoot] remove shoot
scoreboard players add @a[tag=!spec] tick_elapsed 1

item replace entity @a hotbar.0 with minecraft:fishing_rod{display:{Name:'[{"text":"§a§lGUN"}]'}}
item replace entity @a hotbar.1 with air
item replace entity @a hotbar.2 with air
item replace entity @a hotbar.3 with air
item replace entity @a hotbar.4 with air
item replace entity @a hotbar.5 with air
item replace entity @a hotbar.6 with air
item replace entity @a hotbar.7 with air
item replace entity @a hotbar.8 with air

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 6220.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:quakecraft
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:quakecraft master @s ~ ~ ~ 0.2 1

# CD display
execute as @a if score @s shootingCD matches 19..20 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"|","color":"red"},"||||||||||",{"text":" 9% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 17..18 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"||","color":"red"},"|||||||||",{"text":" 18% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 15..16 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"|||","color":"red"},"||||||||",{"text":" 27% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 13..14 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"||||","color":"gold"},"|||||||",{"text":" 36% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 11..12 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"|||||","color":"gold"},"||||||",{"text":" 45% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 9..10 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"||||||","color":"gold"},"|||||",{"text":" 54% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 7..8 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"|||||||","color":"gold"},"||||",{"text":" 63% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 5..6 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"||||||||","color":"green"},"|||",{"text":" 72% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 3..4 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"|||||||||","color":"green"},"||",{"text":" 81% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 1..2 run title @s actionbar ["",{"text":"射击冷却","color":"yellow","bold":true}," [ ",{"text":"||||||||||","color":"green"},"|",{"text":" 90% ","color":"yellow"},"]"]
execute as @a if score @s shootingCD matches 0 run title @s actionbar {"text":"使用钓竿右键以射击！","color":"green","bold":true}

