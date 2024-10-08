# Get the time elasped
scoreboard players operation ROUND_TIME sec_elapsed = ROUND_TIME tick_elapsed
scoreboard players operation ROUND_TIME sec_elapsed /= CONST_20 data
scoreboard players operation ROUND_TIME sec_elapsed_2 = ROUND_TIME tick_elapsed
scoreboard players operation ROUND_TIME sec_elapsed_2 /= CONST_10 data
scoreboard players operation ROUND_TIME sec_elapsed *= CONST_N1 data
scoreboard players operation ROUND_TIME sec_elapsed += CONST_45 data

# Check if matched
execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. at @s run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16773899],FadeColors:[I;16748800]}],Flight:1}}}}
execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. run clear @s

# execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. run tellraw @a [{"text":"[⭐] "},{"selector":"@s","color":"green","bold":true},{"text":" 在 ","color":"yellow"},{"score":{"name":"ROUND_TIME","objective":"sec_elapsed"},"color":"gold","bold":true},{"text":" 秒内完成了本轮建筑复原！","color":"yellow"}]
execute if entity @e[tag=!finished,scores={round_blocks_mb=1..}] run tellraw @a [{"text":"[⭐] "},{"selector":"@a[tag=!finished,scores={round_blocks_mb=1..}]","color":"green","bold":true},{"text":" 在 ","color":"yellow"},{"score":{"name":"ROUND_TIME","objective":"sec_elapsed"},"color":"gold","bold":true},{"text":" 秒内完成了本轮建筑复原！","color":"yellow"}]

execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. run scoreboard players add @s round_score_mb 60
execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. run scoreboard players operation @s round_score_mb += ROUND_TIME sec_elapsed_2
execute as @a[tag=!finished] if score @s round_blocks_mb matches 1.. run scoreboard players operation @s total_score_mb += @s round_score_mb

# Change the color of the ground (absolute coords used)
execute as @a[tag=!finished,tag=spot_1] if score @s round_blocks_mb matches 1.. positioned 2060 94 985 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_2] if score @s round_blocks_mb matches 1.. positioned 2035 94 1010 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_3] if score @s round_blocks_mb matches 1.. positioned 2010 94 1035 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_4] if score @s round_blocks_mb matches 1.. positioned 1985 94 1060 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_5] if score @s round_blocks_mb matches 1.. positioned 2010 94 1085 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_6] if score @s round_blocks_mb matches 1.. positioned 2035 94 1110 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_7] if score @s round_blocks_mb matches 1.. positioned 2060 94 1135 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_8] if score @s round_blocks_mb matches 1.. positioned 2085 94 1110 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_9] if score @s round_blocks_mb matches 1.. positioned 2110 94 1085 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_10] if score @s round_blocks_mb matches 1.. positioned 2135 94 1060 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_11] if score @s round_blocks_mb matches 1.. positioned 2110 94 1035 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete
execute as @a[tag=!finished,tag=spot_12] if score @s round_blocks_mb matches 1.. positioned 2085 94 1010 run fill ~ ~ ~ ~6 ~ ~6 minecraft:yellow_concrete

# Mark as finished
execute as @a if score @s round_blocks_mb matches 1.. run tag @s add finished