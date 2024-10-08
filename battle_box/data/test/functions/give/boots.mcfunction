execute if score CHOSEN_MAP data matches 101 run give @a[advancements={test:root=true},tag=!already] golden_boots

execute if score CHOSEN_MAP data matches 102 run give @a[advancements={test:root=true},tag=!already] cobweb{CanPlaceOn:["lime_terracotta","green_concrete","lime_concrete","slime_block","cobweb"]} 16

execute if score CHOSEN_MAP data matches 103 run give @a[advancements={test:root=true},tag=!already] shears{CanDestroy:["minecraft:white_wool","minecraft:blue_wool","minecraft:red_wool"],Enchantments:[{id:"efficiency",lvl:2}]}

function test:give/tag