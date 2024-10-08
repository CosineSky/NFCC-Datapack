# Teleporting the two players to starting spot
tp @a[tag=first] @e[tag=bridge_spawn_red,limit=1]
tp @a[tag=second] @e[tag=bridge_spawn_blue,limit=1]

effect give @a minecraft:blindness 1 0 true
execute as @a at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1

# Recovering the map
clone 7441 200 7473 7503 229 7501 2482 183 2498 replace

# Placing barriers
fill 2491 200 2513 2491 200 2511 minecraft:barrier
fill 2535 200 2511 2535 200 2513 minecraft:barrier

# Regeneration
clear @a
effect give @a[gamemode=!spectator] regeneration 1 6 true
effect give @a[gamemode=!spectator] saturation 1 6 true

# Reseting items
clear @a[gamemode=!spectator]
item replace entity @a[gamemode=!spectator] hotbar.0 with minecraft:iron_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3}],HideFlags:63}
item replace entity @a[gamemode=!spectator] hotbar.1 with minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:1}],HideFlags:63}
item replace entity @a[gamemode=!spectator] hotbar.2 with minecraft:iron_pickaxe{Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:2}],CanDestroy:["#game:breakable"],HideFlags:63}
item replace entity @a[gamemode=!spectator] hotbar.6 with minecraft:golden_apple 2
item replace entity @a[gamemode=!spectator] hotbar.7 with minecraft:cooked_beef 8
item replace entity @a[gamemode=!spectator] hotbar.8 with minecraft:arrow 8

item replace entity @a[tag=first] hotbar.3 with minecraft:red_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64
item replace entity @a[tag=first] hotbar.4 with minecraft:red_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64
item replace entity @a[tag=first] hotbar.5 with minecraft:red_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64
item replace entity @a[tag=second] hotbar.3 with minecraft:blue_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64
item replace entity @a[tag=second] hotbar.4 with minecraft:blue_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64
item replace entity @a[tag=second] hotbar.5 with minecraft:blue_terracotta{CanPlaceOn:["#game:placable"],HideFlags:63} 64

# Reseting armor
item replace entity @a[gamemode=!spectator] armor.legs with minecraft:iron_leggings{Unbreakable:1b,HideFlags:63}
item replace entity @a[gamemode=!spectator] armor.feet with minecraft:iron_boots{Unbreakable:1b,HideFlags:63}
item replace entity @a[tag=first] armor.head with minecraft:leather_helmet{Unbreakable:1b,display:{color:16711680},HideFlags:63}
item replace entity @a[tag=first] armor.chest with minecraft:leather_chestplate{Unbreakable:1b,display:{color:16711680},HideFlags:63}
item replace entity @a[tag=second] armor.head with minecraft:leather_helmet{Unbreakable:1b,display:{color:1114367},HideFlags:63}
item replace entity @a[tag=second] armor.chest with minecraft:leather_chestplate{display:{Unbreakable:1b,color:1114367},HideFlags:63}

# Starting the round
schedule function game:general/rounds/timer/5s 5s
schedule function game:general/rounds/timer/4s 6s
schedule function game:general/rounds/timer/3s 7s
schedule function game:general/rounds/timer/2s 8s
schedule function game:general/rounds/timer/1s 9s
schedule function game:general/rounds/timer/release 10s