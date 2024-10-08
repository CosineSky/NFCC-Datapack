execute at @s run particle minecraft:firework ~ ~1 ~ 1 1 1 0.1 150
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a[distance=..10] ~ ~ ~ 1 1
title @s title "" 
title @s subtitle {"text":"你成功释放了一只羊！干得漂亮！","color":"green"}
scoreboard players set @s sheep_absorbed 0

item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s hotbar.0 with minecraft:iron_hoe{Scythe:1,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5}],display:{Name:'{"text":"§f法师长镰"}',Lore:['{"text":"§7法师专属的近战武器！"}']}}
item replace entity @s hotbar.1 with minecraft:blaze_rod{Staff:1,Unbreakable:1b,display:{Name:'{"text":"§f法师之杖"}',Lore:['{"text":"§7炫酷的法杖，可以吸收羊的灵魂！"}']}}
item replace entity @s hotbar.2 with minecraft:bow{Bow:1,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}],display:{Name:'{"text":"§f法师弯弓"}',Lore:['{"text":"§7谁说法师不会射箭？"}']}}
item replace entity @s hotbar.3 with minecraft:cooked_mutton 64
item replace entity @s hotbar.4 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air
item replace entity @s hotbar.7 with minecraft:air
item replace entity @s hotbar.8 with minecraft:arrow 64

item replace entity @s[team=red] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:16718853}}
item replace entity @s[team=red] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:16718853}}
item replace entity @s[team=red] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:16718853}}
item replace entity @s[team=blue] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:1603831}}
item replace entity @s[team=blue] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:1603831}}
item replace entity @s[team=blue] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:1603831}}
item replace entity @s[team=green] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:3602200}}
item replace entity @s[team=green] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:3602200}}
item replace entity @s[team=green] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:3602200}}
item replace entity @s[team=yellow] armor.chest with minecraft:leather_chestplate{HideFlags:63,Unbreakable:1b,display:{color:16577615}}
item replace entity @s[team=yellow] armor.legs with minecraft:leather_leggings{HideFlags:63,Unbreakable:1b,display:{color:16577615}}
item replace entity @s[team=yellow] armor.feet with minecraft:leather_boots{HideFlags:63,Unbreakable:1b,display:{color:16577615}}

execute at @s[team=red] run summon minecraft:sheep ~ ~ ~ {AbsorptionAmount:1000.0f,Color:14b}
execute at @s[team=blue] run summon minecraft:sheep ~ ~ ~ {AbsorptionAmount:1000.0f,Color:11b}
execute at @s[team=green] run summon minecraft:sheep ~ ~ ~ {AbsorptionAmount:1000.0f,Color:5b}
execute at @s[team=yellow] run summon minecraft:sheep ~ ~ ~ {AbsorptionAmount:1000.0f,Color:4b}

effect clear @s slowness
effect give @s speed infinite 0 true