# Auto switch scores on "carrot_stick"
# scoreboard players set @a[scores={carrot_stick=1}] carrot_stick 2
# scoreboard players set @a[scores={carrot_stick=3}] carrot_stick 0
scoreboard players set @a[nbt={SelectedItemSlot:0}] carrot_stick 2
scoreboard players set @a[nbt={SelectedItemSlot:1}] carrot_stick 0

# Replace inventory - Carrot sticks
item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.0 with barrier{Tags:["page_up"],display:{Name:'[{"text":"Page Up","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Already first page!","color":"red","bold":false}]'}}
item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.1 with arrow{Tags:["page_up"],display:{Name:'[{"text":"Page Up","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Hover on Me!","color":"gray","bold":false}]'}}
item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.0 with arrow{Tags:["page_up"],display:{Name:'[{"text":"Page Up","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Hover on Me!!","color":"gray","bold":false}]'}}
item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.1 with barrier{Tags:["page_up"],display:{Name:'[{"text":"Page Up","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Already last page!","color":"red","bold":false}]'}}

# Replace inventory - Page 1
execute if score PLAYED_BEDWARS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.3 with minecraft:snowball{Tags:["bedwars"],display:{Name:'[{"text":"Bedwars","color":"red","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 1
execute if score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.4 with minecraft:snowball{Tags:["quakecraft"],display:{Name:'[{"text":"Quakecraft","color":"gold","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 2
execute if score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.5 with minecraft:snowball{Tags:["sheep_hoarders"],display:{Name:'[{"text":"Sheep Hoarders","color":"yellow","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 3
execute if score PLAYED_BATTLE_BOX data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.6 with minecraft:snowball{Tags:["battle_box"],display:{Name:'[{"text":"Battle Box","color":"green","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 4
execute if score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.7 with minecraft:snowball{Tags:["survival_games"],display:{Name:'[{"text":"Survival Games","color":"dark_green","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 5
execute if score PLAYED_JOURNEYS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.8 with minecraft:snowball{Tags:["the_journeys"],display:{Name:'[{"text":"The Journeys","color":"aqua","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 6

# Replace inventory - Page 2
execute if score PLAYED_TNT_TAGS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.3 with minecraft:snowball{Tags:["tnt_tags"],display:{Name:'[{"text":"TNT Tags","color":"blue","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 7
execute if score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.4 with minecraft:snowball{Tags:["maniac_builder"],display:{Name:'[{"text":"Maniac Builder","color":"dark_purple","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 8
execute if score PLAYED_MURDER_MYSTERY data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.5 with minecraft:snowball{Tags:["murder_mystery"],display:{Name:'[{"text":"Murder Mystery","color":"light_purple","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 9
execute if score PLAYED_LAVA_DANCERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.6 with minecraft:snowball{Tags:["lava_dancers"],display:{Name:'[{"text":"Lava Dancers","color":"brown","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 10
execute if score PLAYED_MINIWALLS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.7 with minecraft:snowball{Tags:["miniwalls"],display:{Name:'[{"text":"Guardian Leagues","color":"dark_aqua","italic":false,"bold":true},{"text":" - ","color":"white"},{"text":"Throw Me!","color":"gray","bold":false}]'}} 11

# Empty slots
item replace entity @a[tag=!spec] hotbar.2 with minecraft:air
item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.8 with minecraft:air

# Selected games - Page 1
execute unless score PLAYED_BEDWARS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.3 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_QUAKECRAFT data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.4 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_SHEEP_HOARDERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.5 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_BATTLE_BOX data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.6 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_SURVIVAL_GAMES data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.7 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_JOURNEYS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=2}] hotbar.8 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}

# Selected games - Page 2
execute unless score PLAYED_TNT_TAGS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.3 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_MANIAC_BUILDERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.4 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_MURDER_MYSTERY data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.5 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_LAVA_DANCERS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.6 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}
execute unless score PLAYED_MINIWALLS data matches 0 run item replace entity @a[tag=!spec,scores={carrot_stick=0}] hotbar.7 with minecraft:barrier{display:{Name:'{"text":"该游戏已被选中！","color":"red","italic":false,"bold":true}'}}

# Tag snowballs
execute as @a at @s if entity @s[nbt={SelectedItemSlot:3},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/1
execute as @a at @s if entity @s[nbt={SelectedItemSlot:4},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/2
execute as @a at @s if entity @s[nbt={SelectedItemSlot:5},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/3
execute as @a at @s if entity @s[nbt={SelectedItemSlot:6},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/4
execute as @a at @s if entity @s[nbt={SelectedItemSlot:7},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/5
execute as @a at @s if entity @s[nbt={SelectedItemSlot:8},scores={carrot_stick=2}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/6
execute as @a at @s if entity @s[nbt={SelectedItemSlot:3},scores={carrot_stick=0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/7
execute as @a at @s if entity @s[nbt={SelectedItemSlot:4},scores={carrot_stick=0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/8
execute as @a at @s if entity @s[nbt={SelectedItemSlot:5},scores={carrot_stick=0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/9
execute as @a at @s if entity @s[nbt={SelectedItemSlot:6},scores={carrot_stick=0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/10
execute as @a at @s if entity @s[nbt={SelectedItemSlot:7},scores={carrot_stick=0}] run execute as @e[type=snowball,limit=1,sort=nearest,distance=..2] run function hall:vote/add_tags/11

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
execute as @e[type=snowball,tag=vote_10] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:brown_wool replace #wool
execute as @e[type=snowball,tag=vote_11] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cyan_wool replace #wool

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
execute as @e[type=snowball,tag=vote_10] at @s run particle dust 0.443 0.361 0.361 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1
execute as @e[type=snowball,tag=vote_11] at @s run particle dust 0.212 0.6 0.635 1 ~ ~ ~ 0.01 0.01 0.01 0.01 1