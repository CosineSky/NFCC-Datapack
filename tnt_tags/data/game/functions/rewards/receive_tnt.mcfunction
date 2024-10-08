scoreboard players set @s has_tnt 1
team leave @s 
team join tnt_tag_red
title @s title ""
title @s subtitle {"text":"现在你是炸弹人！","color":"red"}
tellraw @a [{"text":"[⚠] "},{"selector":"@s","color":"red"},{"text":" 成为了炸弹人！","color":"yellow"}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~
advancement revoke @a only game:receive_tnt