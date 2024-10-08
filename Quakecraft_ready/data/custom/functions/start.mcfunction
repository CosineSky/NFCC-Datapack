scoreboard players set @a ready 0
scoreboard players set INGAME data 1

# Event settings
execute if score EVENT_STARTED data matches 1 run scoreboard players add PLAYED_QUAKECRAFT data 1