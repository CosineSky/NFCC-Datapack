team add blue
team add red
team modify blue color blue
team modify red color red
gamerule keepInventory true
gamerule doFireTick false

execute if score CHOSEN_MAP data matches 101 run spawnpoint @a 0 19 0
execute if score CHOSEN_MAP data matches 102 run spawnpoint @a -2 13 49
execute if score CHOSEN_MAP data matches 103 run spawnpoint @a 0 18 98
#function test:property/reset