# Replace inventory
execute if score PLAYED_THE_MOUNTAIN data matches 0 run item replace entity @a hotbar.1 with minecraft:snowball{Tags:["the_mountain"],display:{Name:'[{"text":"The Mountain","color":"red","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 1
execute if score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a hotbar.2 with minecraft:snowball{Tags:["quakecraft"],display:{Name:'[{"text":"Quakecraft","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 2
execute if score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a hotbar.3 with minecraft:snowball{Tags:["sheep_hoarders"],display:{Name:'[{"text":"Sheep Hoarders","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 3

execute if score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a hotbar.5 with minecraft:snowball{Tags:["survival_games"],display:{Name:'[{"text":"Survival Games","color":"dark_green","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 4
execute if score PLAYED_JOURNEYS data matches 0 run item replace entity @a hotbar.6 with minecraft:snowball{Tags:["the_journeys"],display:{Name:'[{"text":"The Journeys","color":"aqua","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 5
execute if score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a hotbar.7 with minecraft:snowball{Tags:["maniac_builder"],display:{Name:'[{"text":"Maniac Builder","color":"dark_purple","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 6


# Selected games
execute unless score PLAYED_THE_MOUNTAIN data matches 0 run item replace entity @a hotbar.1 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a hotbar.2 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a hotbar.3 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}

execute unless score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a hotbar.5 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_JOURNEYS data matches 0 run item replace entity @a hotbar.6 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a hotbar.7 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}

# Tag snowballs
execute as @a at @s if entity @s[nbt={SelectedItemSlot:1}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/1
execute as @a at @s if entity @s[nbt={SelectedItemSlot:2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/2
execute as @a at @s if entity @s[nbt={SelectedItemSlot:3}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/3
execute as @a at @s if entity @s[nbt={SelectedItemSlot:5}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/5
execute as @a at @s if entity @s[nbt={SelectedItemSlot:6}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/6
execute as @a at @s if entity @s[nbt={SelectedItemSlot:7}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/8


# # Replace inventory
# execute if score PLAYED_THE_MOUNTAIN data matches 0 run item replace entity @a hotbar.0 with minecraft:snowball{Tags:["the_mountain"],display:{Name:'[{"text":"The Mountain","color":"red","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 1
# execute if score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a hotbar.1 with minecraft:snowball{Tags:["quakecraft"],display:{Name:'[{"text":"Quakecraft","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 2
# execute if score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a hotbar.2 with minecraft:snowball{Tags:["sheep_hoarders"],display:{Name:'[{"text":"Sheep Hoarders","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 3
# execute if score PLAYED_BATTLE_BOX data matches 0 run item replace entity @a hotbar.3 with minecraft:snowball{Tags:["battle_box"],display:{Name:'[{"text":"Battle Box","color":"green","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 4
# execute if score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a hotbar.4 with minecraft:snowball{Tags:["survival_games"],display:{Name:'[{"text":"Survival Games","color":"dark_green","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 5
# execute if score PLAYED_JOURNEYS data matches 0 run item replace entity @a hotbar.5 with minecraft:snowball{Tags:["the_journeys"],display:{Name:'[{"text":"The Journeys","color":"aqua","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 6
# execute if score PLAYED_TNT_TAGS data matches 0 run item replace entity @a hotbar.6 with minecraft:snowball{Tags:["tnt_tags"],display:{Name:'[{"text":"TNT Tags","color":"blue","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 7
# execute if score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a hotbar.7 with minecraft:snowball{Tags:["maniac_builder"],display:{Name:'[{"text":"Maniac Builder","color":"dark_purple","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 8
# execute if score PLAYED_LAVA_DANCERS data matches 0 run item replace entity @a hotbar.8 with minecraft:snowball{Tags:["lava_dancers"],display:{Name:'[{"text":"Lava Dancers","color":"light_purple","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 9

# # Selected games
# execute unless score PLAYED_THE_MOUNTAIN data matches 0 run item replace entity @a hotbar.0 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a hotbar.1 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a hotbar.2 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_BATTLE_BOX data matches 0 run item replace entity @a hotbar.3 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a hotbar.4 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_JOURNEYS data matches 0 run item replace entity @a hotbar.5 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_TNT_TAGS data matches 0 run item replace entity @a hotbar.6 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a hotbar.7 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
# execute unless score PLAYED_LAVA_DANCERS data matches 0 run item replace entity @a hotbar.8 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}

# # Tag snowballs
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/1
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:1}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/2
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/3
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:3}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/4
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:4}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/5
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:5}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/6
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:6}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/7
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:7}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/8
# execute as @a at @s if entity @s[nbt={SelectedItemSlot:8}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/9

# Impact of snowballs
execute as @e[type=snowball,tag=vote_1] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:red_wool replace #wool
execute as @e[type=snowball,tag=vote_2] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:orange_wool replace #wool
execute as @e[type=snowball,tag=vote_3] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:yellow_wool replace #wool
execute as @e[type=snowball,tag=vote_4] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:lime_wool replace #wool
execute as @e[type=snowball,tag=vote_5] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:green_wool replace #wool
execute as @e[type=snowball,tag=vote_6] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:light_blue_wool replace #wool
execute as @e[type=snowball,tag=vote_7] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:blue_wool replace #wool
execute as @e[type=snowball,tag=vote_8] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:purple_wool replace #wool
execute as @e[type=snowball,tag=vote_9] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:magenta_wool replace #wool

# Trails of snowballs
execute as @e[type=snowball,tag=vote_1] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_2] at @s run particle dust 1 0.549 0 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_3] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_4] at @s run particle dust 0 1 0.2 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_5] at @s run particle dust 0.059 0.663 0.231 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_6] at @s run particle dust 0 0.898 1 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_7] at @s run particle dust 0.141 0.216 0.914 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_8] at @s run particle dust 0.667 0.043 0.788 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_9] at @s run particle dust 0.976 0.345 0.788 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1