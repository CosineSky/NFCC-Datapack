execute at @e[type=fishing_bobber,limit=1] as @e[type=fishing_bobber,limit=1] run tag @s add have_been_detected
execute at @e[type=fishing_bobber,tag=have_been_detected] run tag @p[tag=!spec] add shoot
kill @e[type=fishing_bobber,tag=have_been_detected]

execute if score @a[tag=shoot,limit=1] shootingCD matches 0 run function custom:recruseshoot
execute as @a[tag=shoot,limit=1] if score @s shootingCD matches 0 run scoreboard players add @s shootingCD 20

tag @a[tag=shoot] remove shoot