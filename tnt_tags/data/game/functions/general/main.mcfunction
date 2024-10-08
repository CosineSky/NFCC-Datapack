# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 6360.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:tnt_tags
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:tnt_tags master @s ~ ~ ~ 0.2 1

# Game rounds
function game:general/rounds
scoreboard players add GAME tick_elapsed 1
scoreboard players remove ROUND_TIME tick_elapsed 1
execute if score ROUND_TIME tick_elapsed matches ..-200 run scoreboard players set ROUND_TIME tick_elapsed 900
scoreboard players operation ROUND_TIME sec_elapsed = ROUND_TIME tick_elapsed
scoreboard players operation ROUND_TIME sec_elapsed /= CONST_20 data

# Display
execute if score ROUND_TIME tick_elapsed matches 0.. run title @a[gamemode=adventure] actionbar [{"text":"当前存活玩家数: ","color":"gold","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"},{"text":" | ","color":"white","bold":false},{"text":"距离本轮炸弹引爆: ","color":"gold"},{"score":{"name":"ROUND_TIME","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow"},{"text":" | ","color":"white","bold":false},{"text":"当前得分: ","color":"gold","bold":true},{"score":{"name":"*","objective":"round_score_mb"},"color":"green","bold":true},{"text":"⭐","color":"yellow","bold":true}]
execute if score ROUND_TIME tick_elapsed matches 0.. run title @a[gamemode=spectator] actionbar [{"text":"当前存活玩家数: ","color":"gold","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green"},{"text":" | ","color":"white","bold":false},{"text":"距离本轮炸弹引爆: ","color":"gold"},{"score":{"name":"ROUND_TIME","objective":"sec_elapsed"},"color":"green"},{"text":"秒","color":"yellow"},{"text":" | ","color":"white","bold":false},{"text":"你现在是旁观者！","bold":true}]

# Glowing
effect give @a[scores={has_tnt=0}] minecraft:glowing 2 1 true
effect clear @a[scores={has_tnt=1}] minecraft:glowing

# Remove item entities
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:coal"}}]

# Void kills
execute as @a at @s if entity @s[y=10,dy=10] run tellraw @a [{"text":"[🗡] "},{"selector":"@s","color":"red"},{"text":" 掉出了这个地图，RIP。","color":"white"}]
execute as @a at @s if entity @s[y=10,dy=10] run gamemode spectator @s
execute as @a at @s if entity @s[y=10,dy=10] run tp @s @e[tag=tnt_tags_center,limit=1]

# Check if a game is over
execute store result score ALIVE data run execute if entity @a[gamemode=adventure]
execute if score GAME tick_elapsed matches 200.. if score ALIVE data matches ..1 run function game:general/game_over