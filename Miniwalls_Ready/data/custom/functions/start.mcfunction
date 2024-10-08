scoreboard players set @a ready 0
scoreboard players set MWINGAME data 1
gamerule announceAdvancements false

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_MINIWALLS data 1