datapack disable "file/hunger_games"
datapack disable "file/journeys"
datapack disable "file/bedwars"
datapack disable "file/casual_pvp"
datapack disable "file/sheep_hoarder"
datapack disable "file/tnt_tags"
datapack disable "file/sand_runners"
datapack disable "file/skywars"
datapack disable "file/Quakecraft_ingame"
datapack disable "file/Quakecraft_ready"
datapack disable "file/maniac_builder"
datapack disable "file/murder_mystery"
datapack disable "file/battle_box"
datapack disable "file/event_hall"

scoreboard players set INGAME data 0
execute in overworld run tp @a 450 165 -548
execute in overworld run spawnpoint @a 450 165 -548
stopsound @a
team leave @a[tag=!spec]
clear @a
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"主大厅","color":"green","bold":true}

function game:levels/levels_set
function hall:fireworks/day