execute if score CHOSEN_MAP data matches 101 run give @a[advancements={test:root=true},tag=!already] potion{Potion:"fire_resistance"}

execute if score CHOSEN_MAP data matches 102 run give @a[advancements={test:root=true},tag=!already] iron_chestplate{Enchantments:[{id:"thorns",lvl:1}]}

execute if score CHOSEN_MAP data matches 103 run give @a[advancements={test:root=true},tag=!already] iron_leggings{Enchantments:[{id:"protection",lvl:1}]}

function test:give/tag