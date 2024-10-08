execute if score EVENT_STARTED data matches 0 run clear @a
execute if score EVENT_STARTED data matches 0 run item replace entity @a armor.head with minecraft:iron_helmet{Unbreakable:1b}
execute if score EVENT_STARTED data matches 0 run item replace entity @a armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
execute if score EVENT_STARTED data matches 0 run item replace entity @a armor.legs with minecraft:iron_leggings{Unbreakable:1b}
execute if score EVENT_STARTED data matches 0 run item replace entity @a armor.feet with minecraft:iron_boots{Unbreakable:1b}
execute if score EVENT_STARTED data matches 0 run item replace entity @a hotbar.0 with minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
execute if score EVENT_STARTED data matches 0 run give @a minecraft:cooked_beef 64
execute if score EVENT_STARTED data matches 0 run give @a minecraft:arrow 1
execute if score EVENT_STARTED data matches 0 run tellraw @a [{"text":"PVP mode is now switched to ","color":"yellow"},{"text":"Bow Only","color":"green"},"!"]

execute if score EVENT_STARTED data matches 1 run tellraw @a [{"text":"[⚠] "},{"text":"似乎有人试图改变游戏规则...但现在是不允许的 :)","color":"red"}]

advancement revoke @a only game:bow_only