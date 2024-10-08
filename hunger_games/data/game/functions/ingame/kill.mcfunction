# Send random death msg to all players
execute if entity @a[scores={MWDeathCount=1},tag=!spec] unless entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1}]"},{"text":" 感受到了魔法的力量。","color":"white"}]

execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 0..11 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 没有抵抗住 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的致命一击。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 12..23 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 在和 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的搏斗中失败了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 24..35 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 试图击杀 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":"，却不幸被反杀了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 36..47 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 对于 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 而言太不堪一击了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 48..59 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 太菜了，经不起 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的考验。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 60..71 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 拼命挣扎，却还是输给了 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 72..83 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 或许需要再练练走位才能逃脱 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 84.. run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 试图逃离 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" ，却为时已晚。"}]

# Rewards upon kills
execute if entity @a[scores={MWDeathCount=1},tag=!spec] as @a at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 2 1
tellraw @a[scores={MWKillCount=1},tag=!spec] [{"text":"+50","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
scoreboard players add @a[scores={MWKillCount=1},tag=!spec] round_score_mb 50

# Extra rewards
execute if score ALIVE data matches 2 run tellraw @a[scores={MWDeathCount=1},tag=!spec] [{"text":"你在本轮饥饿游戏中排名第三，获得了额外的","color":"yellow"},{"text":"+250","color":"green"},"⭐"]
execute if score ALIVE data matches 2 run scoreboard players add @a[scores={MWDeathCount=1},tag=!spec] round_score_mb 250
execute if score ALIVE data matches 1 run tellraw @a[scores={MWDeathCount=1},tag=!spec] [{"text":"你在本轮饥饿游戏中排名第二，获得了额外的","color":"yellow"},{"text":"+200","color":"green"},"⭐"]
execute if score ALIVE data matches 1 run scoreboard players add @a[scores={MWDeathCount=1},tag=!spec] round_score_mb 200

# Remove kill-related labels
scoreboard players set @a[scores={MWDeathCount=1},tag=!spec] MWDeathCount 0
scoreboard players set @a[scores={MWKillCount=1..},tag=!spec] MWKillCount 0
