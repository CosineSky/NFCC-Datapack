# Leather armor
item replace entity @a[team=red] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:16718853}}
item replace entity @a[team=red] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:16718853}}
item replace entity @a[team=red] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:16718853}}

item replace entity @a[team=blue] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:1603831}}
item replace entity @a[team=blue] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:1603831}}
item replace entity @a[team=blue] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:1603831}}

item replace entity @a[team=green] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:3602200}}
item replace entity @a[team=green] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:3602200}}
item replace entity @a[team=green] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:3602200}}

item replace entity @a[team=yellow] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:16577615}}
item replace entity @a[team=yellow] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:16577615}}
item replace entity @a[team=yellow] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:16577615}}

# Sheep head
item replace entity @a[scores={sheep_absorbed=0}] armor.head with minecraft:diamond_helmet
item replace entity @a[scores={sheep_absorbed=1}] armor.head with minecraft:white_wool

# Potion effects
# effect give @a[scores={sheep_absorbed=1}] minecraft:slowness 1 0 true
# effect give @a[scores={sheep_absorbed=0}] minecraft:speed 1 0 true
# effect clear @a[scores={sheep_absorbed=1}] speed
# effect clear @a[scores={sheep_absorbed=0}] slowness