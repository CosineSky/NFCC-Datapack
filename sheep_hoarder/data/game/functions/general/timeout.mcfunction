title @a title {"text":"游戏结束！","color":"yellow","bold":true}

execute if score @e[tag=sheep_base_red,limit=1] data >= @e[tag=sheep_base_blue,limit=1] data if score @e[tag=sheep_base_red,limit=1] data >= @e[tag=sheep_base_green,limit=1] data if score @e[tag=sheep_base_red,limit=1] data >= @e[tag=sheep_base_yellow,limit=1] data run function game:general/won/red
execute if score @e[tag=sheep_base_blue,limit=1] data >= @e[tag=sheep_base_red,limit=1] data if score @e[tag=sheep_base_blue,limit=1] data >= @e[tag=sheep_base_green,limit=1] data if score @e[tag=sheep_base_blue,limit=1] data >= @e[tag=sheep_base_yellow,limit=1] data run function game:general/won/blue
execute if score @e[tag=sheep_base_green,limit=1] data >= @e[tag=sheep_base_red,limit=1] data if score @e[tag=sheep_base_green,limit=1] data >= @e[tag=sheep_base_blue,limit=1] data if score @e[tag=sheep_base_green,limit=1] data >= @e[tag=sheep_base_yellow,limit=1] data run function game:general/won/green
execute if score @e[tag=sheep_base_yellow,limit=1] data >= @e[tag=sheep_base_red,limit=1] data if score @e[tag=sheep_base_yellow,limit=1] data >= @e[tag=sheep_base_blue,limit=1] data if score @e[tag=sheep_base_yellow,limit=1] data >= @e[tag=sheep_base_green,limit=1] data run function game:general/won/yellow

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
gamemode spectator @a
scoreboard players set INGAME data 0
schedule function game:general/reset_game 5s