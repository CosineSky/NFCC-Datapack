datapack disable "file/hunger_games"
datapack disable "file/journeys"
datapack disable "file/bedwars"
datapack disable "file/casual_pvp"
datapack disable "file/sheep_hoarder"
datapack disable "file/tnt_tags"
datapack disable "file/sand_runners"
datapack disable "file/escape_the_lab"
datapack disable "file/Quakecraft_ingame"
datapack disable "file/Quakecraft_ready"
datapack disable "file/maniac_builder"
datapack disable "file/murder_mystery"
datapack disable "file/battle_box"
datapack disable "file/Miniwalls_ingame"
datapack disable "file/Miniwalls_Ready"
datapack disable "file/rainbow_rhythms"
datapack disable "file/event_hall"

scoreboard players set INGAME data 0
execute in overworld run tp @a 449 166 -548 facing 449 184 -624
execute in overworld run spawnpoint @a 449 166 -548
execute in overworld run worldborder center 449 -548
execute in overworld run worldborder set 20000
stopsound @a
clear @a
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"主大厅","color":"green","bold":true}

bossbar set minecraft:welcome_event players
bossbar set minecraft:welcome players @a
scoreboard objectives setdisplay sidebar

function game:levels/levels_set
weather clear
time set noon