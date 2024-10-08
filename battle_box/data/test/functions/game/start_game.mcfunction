gamemode adventure @a
clear @a
gamerule doTileDrops false
scoreboard players set @a ready 0
scoreboard players set INGAME data 1
scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0
execute if score CHOSEN_MAP data matches 101 run setworldspawn 0 19 0
execute if score CHOSEN_MAP data matches 102 run setworldspawn -2 13 49
execute if score CHOSEN_MAP data matches 103 run setworldspawn 0 18 98


team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]
team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]
team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]
team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]
team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]
team join blue @p[team=!blue,team=!red,tag=!spec]
team join red @p[team=!blue,team=!red,tag=!spec]


# Teleporting players
execute if score CHOSEN_MAP data matches 101 run tp @a[team=blue] 26 2 0
execute if score CHOSEN_MAP data matches 101 run tp @a[team=red] -26 2 0
execute if score CHOSEN_MAP data matches 102 run tp @a[team=blue] -27 1 49
execute if score CHOSEN_MAP data matches 102 run tp @a[team=red] 23 1 49
execute if score CHOSEN_MAP data matches 103 run tp @a[team=blue] -27 12 98
execute if score CHOSEN_MAP data matches 103 run tp @a[team=red] 27 12 98


# Giving effects
execute if score CHOSEN_MAP data matches 101 run effect give @a resistance infinite 0 true
execute if score CHOSEN_MAP data matches 102 run effect give @a jump_boost infinite 1 true


# Giving boots
execute if score CHOSEN_MAP data matches 102 run item replace entity @a[team=blue] armor.feet with leather_boots{display:{color:147967},Enchantments:[{id:"feather_falling",lvl:10},{id:"unbreaking",lvl:3}]}
execute if score CHOSEN_MAP data matches 102 run item replace entity @a[team=red] armor.feet with leather_boots{display:{color:16712194},Enchantments:[{id:"feather_falling",lvl:10},{id:"unbreaking",lvl:3}]}
execute unless score CHOSEN_MAP data matches 102 run item replace entity @a[team=blue] armor.head with leather_helmet{display:{color:147967},Enchantments:[{id:"unbreaking",lvl:3}]}
execute unless score CHOSEN_MAP data matches 102 run item replace entity @a[team=red] armor.head with leather_helmet{display:{color:16712194},Enchantments:[{id:"unbreaking",lvl:3}]}


# Giving items at the start
execute if score CHOSEN_MAP data matches 101 run give @a stone_sword{Enchantments:[{id:"sharpness",lvl:3}]}
execute if score CHOSEN_MAP data matches 101 run give @a[team=blue] blue_wool{CanPlaceOn:["minecraft:crying_obsidian"]} 64
execute if score CHOSEN_MAP data matches 101 run give @a[team=red] red_wool{CanPlaceOn:["minecraft:crying_obsidian"]} 64
execute if score CHOSEN_MAP data matches 101 run give @a shears{CanDestroy:["minecraft:white_wool","minecraft:blue_wool","minecraft:red_wool"],Enchantments:[{id:"efficiency",lvl:2}]}
execute if score CHOSEN_MAP data matches 101 run give @a crossbow{Enchantments:[{"id":"quick_charge",lvl:3}]}
execute if score CHOSEN_MAP data matches 101 run give @a arrow 7
execute if score CHOSEN_MAP data matches 101 run give @a ender_pearl{display:{Name:'[{"text": "上升道具","color": "yellow"}]'}}

execute if score CHOSEN_MAP data matches 102 run give @a wooden_sword{Enchantments:[{id:"sharpness",lvl:1},{id:"knockback",lvl:1}]}
execute if score CHOSEN_MAP data matches 102 run give @a[team=blue] blue_wool{CanPlaceOn:["minecraft:glowstone"]} 64
execute if score CHOSEN_MAP data matches 102 run give @a[team=red] red_wool{CanPlaceOn:["minecraft:glowstone"]} 64
execute if score CHOSEN_MAP data matches 102 run give @a shears{CanDestroy:["minecraft:white_wool","minecraft:blue_wool","minecraft:red_wool","minecraft:cobweb"],Enchantments:[{id:"efficiency",lvl:2}]}
execute if score CHOSEN_MAP data matches 102 run give @a crossbow{Enchantments:[{"id":"quick_charge",lvl:3}]}
execute if score CHOSEN_MAP data matches 102 run give @a arrow 7

execute if score CHOSEN_MAP data matches 103 run give @a wooden_sword{Enchantments:[{id:"unbreaking",lvl:3}]}
execute if score CHOSEN_MAP data matches 103 run give @a[team=blue] blue_wool{CanPlaceOn:["minecraft:sea_lantern"]} 64
execute if score CHOSEN_MAP data matches 103 run give @a[team=red] red_wool{CanPlaceOn:["minecraft:sea_lantern"]} 64
execute if score CHOSEN_MAP data matches 103 run give @a shears{CanDestroy:["minecraft:white_wool","minecraft:blue_wool","minecraft:red_wool"],Enchantments:[{id:"unbreaking",lvl:1}]}


# Supply potions in the map
execute if score CHOSEN_MAP data matches 101 run summon minecraft:item 0 2 -14 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}}}
execute if score CHOSEN_MAP data matches 101 run summon minecraft:item 0 2 14 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}}}
execute if score CHOSEN_MAP data matches 102 run summon minecraft:item 12 4 63 {Item:{id:"golden_apple",Count:1b}}
execute if score CHOSEN_MAP data matches 102 run summon minecraft:item -16 4 35 {Item:{id:"golden_apple",Count:1b}}
execute if score CHOSEN_MAP data matches 103 run summon minecraft:item 0 6 84 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"poison"}}}
execute if score CHOSEN_MAP data matches 103 run summon minecraft:item 0 6 112 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"poison"}}}

schedule function test:game/open_door 20s
schedule function test:title/5 15s
schedule function test:title/1min 80s
schedule function test:win/no_win 140s
schedule function test:title/start 20s
scoreboard players set BGM tick_elapsed -1


# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_BATTLE_BOX data 1

tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Battle Box ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:battle_box"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}