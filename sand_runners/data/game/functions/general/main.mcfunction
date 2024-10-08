# Random number generator
scoreboard players add RNG tick_elapsed 1
execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 4080.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:sand_runners
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:sand_runners master @s ~ ~ ~ 0.2 1

# Prompts
execute if score GAME tick_elapsed matches 1 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"10","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 100 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 120 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 120 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 140 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 140 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 160 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 160 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 180 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 180 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 200 run tellraw @a {"text":"祝你好运！","color":"yellow"}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] hotbar.2 with minecraft:splash_potion{HideFlags:63,CustomPotionColor:65340,CustomPotionEffects:[{Id:1,Amplifier:1,Duration:600}],display:{Name:'{"text":"§a+40% 移动速度 §7（30秒）"}'}}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] hotbar.3 with minecraft:splash_potion{HideFlags:63,CustomPotionColor:65340,CustomPotionEffects:[{Id:8,Amplifier:2,Duration:300}],display:{Name:'{"text":"§a+150% 跳跃高度§7（15秒）"}'}}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] hotbar.5 with minecraft:splash_potion{HideFlags:63,CustomPotionColor:16711680,CustomPotionEffects:[{Id:2,Amplifier:1,Duration:400}],display:{Name:'{"text":"§c-30% 移动速度§7（20秒）"}'}}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] hotbar.6 with minecraft:splash_potion{HideFlags:63,CustomPotionColor:16711680,CustomPotionEffects:[{Id:15,Amplifier:2,Duration:100}],display:{Name:'{"text":"§c失明§7（5秒）"}'}}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] hotbar.4 with minecraft:bow{Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:infinity",lvl:1s}],display:{Name:'{"text":"§e§l烈焰弓"}'}}
execute if score GAME tick_elapsed matches 200 run item replace entity @a[tag=!spec] inventory.0 with minecraft:arrow

execute if score GAME tick_elapsed matches 1400 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"分钟后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 2600 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"分钟后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 3800 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 4900 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"5","color":"red","bold":true},{"text":"秒后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 4920 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"4","color":"red","bold":true},{"text":"秒后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 4940 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"3","color":"red","bold":true},{"text":"秒后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 4960 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"2","color":"red","bold":true},{"text":"秒后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 4980 run tellraw @a [{"text":"[❌] "},{"text":"上层平台将在","color":"yellow"},{"text":"1","color":"red","bold":true},{"text":"秒后移除！","color":"yellow"}]
execute if score GAME tick_elapsed matches 5000 run tellraw @a [{"text":"[❌] "},{"text":"上层平台已被移除，所有上方玩家获得","color":"yellow"},{"text":"5","color":"red","bold":true},{"text":"秒缓降效果。","color":"yellow"}]
execute if score GAME tick_elapsed matches 5000 run fill 489 73 -50 450 73 -11 minecraft:air replace minecraft:tnt
execute if score GAME tick_elapsed matches 5000 as @a at @s if entity @s[y=70,dy=20] run effect give @s slow_falling 5 0 true

# Prevent TNTs from exploding and remove arrows in ground
kill @e[type=minecraft:tnt,nbt={Fuse:60s}]
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~1 ~1 ~ ~1 ~1 ~ minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~-1 ~1 ~ ~-1 ~1 ~ minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~ ~1 ~1 ~ ~1 ~1 minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run fill ~ ~1 ~-1 ~ ~1 ~-1 minecraft:air replace minecraft:tnt
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 33
execute as @e[type=arrow,nbt={inGround:1b}] at @s run playsound entity.generic.explode master @a[distance=..3] ~ ~ ~ 0.5 1
kill @e[type=arrow,nbt={inGround:1b}]

# Feather Falling
execute as @a at @s run particle flame ~ ~ ~ 0.01 0.01 0.01 0.01 1
item replace entity @a armor.feet with minecraft:golden_boots{HideFlags:63,Enchantments:[{id:"minecraft:feather_falling",lvl:100},{id:"binding_curse",lvl:1}]}

# Actionbar display
title @a[gamemode=adventure] actionbar ["",{"text":"存活玩家: ","color":"gold","bold":true},{"score":{"name":"ALIVE","objective":"data"},"color":"green","bold":true}," | ",{"text":"当前得分: ","color":"gold","bold":true},{"score":{"name":"*","objective":"round_score_mb"},"color":"green","bold":true},{"text":"⭐","color":"yellow","bold":true}]

# Actions on death
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run title @s title {"text":"🔥","color":"red"}
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1,Colors:[I;16741120],FadeColors:[I;16771586]}],Flight:1}}}}
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run title @s subtitle {"text":"Better luck next time...","color":"yellow"}
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run scoreboard players add @a[gamemode=adventure] round_score_mb 45
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run scoreboard players remove @s round_score_mb 45
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run title @a[gamemode=adventure] title ""
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run title @a[gamemode=adventure] subtitle [{"text":"+15 ","color":"green"},{"text":"⭐","color":"yellow"}]
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run title @s subtitle ""
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 0..17 if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 在熔岩之中迷失了自我。"}]
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 18..34 if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 化作了一团绚丽的烟花。"}]
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 35..51 if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 试图在熔岩中游泳。"}]
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 52..68 if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 误把岩浆当作了橙汁。"}]
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 69..85 if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 欲火焚身。"}]
execute as @a[gamemode=adventure] at @s if score RNG tick_elapsed matches 86.. if block ~ ~ ~ minecraft:lava run tellraw @a [{"text":"[🔥] "},{"selector":"@s"},{"text":" 落入岩浆，成为了一只烧鸡。"}]
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run gamemode spectator @s

# Check if a game is over
scoreboard players add GAME tick_elapsed 1
execute store result score ALIVE data run execute if entity @a[gamemode=adventure]
execute if score GAME tick_elapsed matches 201.. if score ALIVE data matches ..1 run function game:general/game_over