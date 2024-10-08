scoreboard players set @s has_tnt 0
team leave @s 
team join tnt_tag_green
execute at @s run particle minecraft:glow ~ ~1 ~ 0.01 1 0.01 0.1 99
title @s title ""
title @s subtitle {"text":"你安全了...暂时的。","color":"green"}
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~
advancement revoke @a only game:spread