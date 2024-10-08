# TNT head
item replace entity @a[scores={has_tnt=0},tag=!spec] armor.head with minecraft:golden_helmet
item replace entity @a[scores={has_tnt=1},tag=!spec] armor.head with minecraft:tnt
item replace entity @a[tag=!spec] armor.feet with golden_boots{HideFlags:63,Enchantments:[{id:"feather_falling",lvl:10},{id:"binding_curse",lvl:1}]}

effect clear @a[scores={has_tnt=0}] minecraft:speed
effect give @a[scores={has_tnt=1}] minecraft:speed 1 1 true
effect give @a minecraft:saturation 5 4 true