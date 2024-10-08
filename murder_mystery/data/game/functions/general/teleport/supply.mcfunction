give @a[gamemode=!spectator] minecraft:stone_sword{Enchantments:[{id:"sweeping",lvl:2}]}
give @a[gamemode=!spectator] minecraft:stone_pickaxe{Enchantments:[{id:"efficiency",lvl:2}]}
give @a[gamemode=!spectator] minecraft:stone_axe{Enchantments:[{id:"efficiency",lvl:2}]}
give @a[gamemode=!spectator] minecraft:stone_shovel{Enchantments:[{id:"efficiency",lvl:2}]}
give @a[gamemode=!spectator] minecraft:apple 5
give @a[gamemode=!spectator] minecraft:nether_star{Unthrowable:1b,display:{Name:'[{"text":"Bingo Menu","color":"yellow","italic":false},{"text":" - Hold Me!","color":"gray"}]'}}

tellraw @a ["[",{"text":"√","color":"green"},"] ",{"text":"初始物资已发放！","color":"yellow","bold":true}]