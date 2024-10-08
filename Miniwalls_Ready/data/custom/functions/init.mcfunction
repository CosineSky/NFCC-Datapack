scoreboard objectives add data dummy "data"
scoreboard players set MWSTARTED data 0
execute unless score MWINGAME data matches 0..1 run scoreboard players set MWINGAME data 0
scoreboard objectives add ready dummy "ready"
scoreboard players set @a ready 0