# Removing fade-in and fade-out of titles
title @a times 0t 100t 0t

# Title display
title @a title [{"selector":"@a[tag=first]","color":"red"}]

# Playing sound
execute as @a run playsound block.note_block.pling master @s ~ ~ ~ 1 1

# Effects
effect give @a blindness 4 1 true