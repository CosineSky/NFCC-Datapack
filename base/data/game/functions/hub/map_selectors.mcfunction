scoreboard players enable @a map_selector

# journeys
execute as @a[scores={map_selector=1}] run function game:rewards/journeys/1
execute as @a[scores={map_selector=2}] run function game:rewards/journeys/2

# battle box
execute as @a[scores={map_selector=101}] run function game:rewards/battle_box/1
execute as @a[scores={map_selector=102}] run function game:rewards/battle_box/2
execute as @a[scores={map_selector=103}] run function game:rewards/battle_box/3

# bedwars
execute as @a[scores={map_selector=201}] run function game:rewards/bedwars/1
execute as @a[scores={map_selector=202}] run function game:rewards/bedwars/2

# quakecraft
execute as @a[scores={map_selector=301}] run function game:rewards/quakecraft/1
execute as @a[scores={map_selector=302}] run function game:rewards/quakecraft/2
execute as @a[scores={map_selector=303}] run function game:rewards/quakecraft/3