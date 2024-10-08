scoreboard players set @s sheep_absorbed 1
execute at @s run particle minecraft:witch ~ ~1 ~ 0.01 1 0.01 0.1 99
title @s title {"text":"Sheep Kill!","color":"yellow","bold":true}
title @s subtitle {"text":"羊的灵魂进入了你的体内...","color":"green"}

tellraw @s [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（羊人击杀奖励）","color":"gold"}]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players add @s round_score_mb 20

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

advancement revoke @a only game:absorber_kill