# Teleport back to Event hall
tp @a -1985 11 -40 facing -1944 17 -40
spawnpoint @a -1985 11 -40
clear @a
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Event Hall","color":"green","bold":true}

# Reset count-down
scoreboard players set COUNT_DOWN tick_elapsed 1234

# Add one more game played
scoreboard players add PLAYED_GAMES data 1
datapack disable "file/maniac_builder"

bossbar set minecraft:maniac_builders players
bossbar set minecraft:welcome_event players @a

function game:levels/levels_set