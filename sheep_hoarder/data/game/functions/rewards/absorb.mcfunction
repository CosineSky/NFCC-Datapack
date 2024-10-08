scoreboard players set @s sheep_absorbed 1
title @s title "" 
title @s subtitle {"text":"你成功吸收了一只羊！","color":"green"}
execute at @s run execute as @e[type=minecraft:sheep,nbt={HurtTime:10s}] at @s run particle minecraft:witch ~ ~1 ~ 0.01 1 0.01 0.1 99
execute at @s run tp @e[type=minecraft:sheep,nbt={HurtTime:10s}] ~ ~-100 ~

item replace entity @s armor.head with minecraft:white_wool
item replace entity @s hotbar.0 with minecraft:wheat{Wheat:1,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5}],display:{Name:'{"text":"§f法国小麦"}',Lore:['{"text":"§7虽然是食物，但也勉强能用来战斗..."}']}}
item replace entity @s hotbar.1 with minecraft:white_wool{Wool:1,Unbreakable:1b,display:{Name:'{"text":"§f现在你是一只羊！"}'}}
item replace entity @s hotbar.2 with minecraft:stick{Stick:1,Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1}],display:{Name:'{"text":"§f羊羊弹力棒"}',Lore:['{"text":"§7Baaaaahhh... POG!"}']}}
item replace entity @s hotbar.3 with minecraft:apple 64
item replace entity @s hotbar.4 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air
item replace entity @s hotbar.7 with minecraft:air
item replace entity @s hotbar.8 with minecraft:air

effect clear @s speed
effect give @s slowness infinite 0 true

advancement revoke @a only game:absorb