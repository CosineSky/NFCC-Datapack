# Removing fade-in and fade-out of titles
title @a times 0t 100t 0t

# Title display
title @a title [{"selector":"@a[tag=first]","color":"red"},{"text":" v.s. ","color":"yellow"},{"selector":"@a[tag=second]","color":"blue"}]
title @a subtitle {"text":"Good Luck and Have Fun!","color":"gold"}
tellraw @a [{"text":"[✈] "},{"text":"选手已经尘埃落定，片刻后所有玩家将传送至最终对决竞技场！","color":"yellow","bold":true}]

# Playing sound
execute as @a run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1
