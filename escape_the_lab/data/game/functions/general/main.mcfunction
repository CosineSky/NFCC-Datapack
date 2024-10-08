# Random number generator
# scoreboard players add RNG tick_elapsed 1
# execute if score RNG tick_elapsed matches 100.. run scoreboard players set RNG tick_elapsed 0

# Effects
effect give @a minecraft:saturation 5 5 true
effect give @a minecraft:resistance 5 5 true

# Inventory
item replace entity @a[tag=!spec,gamemode=!spectator] hotbar.0 with minecraft:air
item replace entity @a[tag=!spec,gamemode=!spectator,tag=!withTrident1,tag=!withTrident2,tag=!withTrident3,tag=!withRocket,tag=!withBow] hotbar.3 with minecraft:barrier{display:{Name:'{"text":"暂无特殊道具","color":"red","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator,tag=withTrident1] hotbar.3 with minecraft:trident{Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:1}],display:{Name:'{"text":"三叉戟","color":"aqua","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator,tag=withTrident2] hotbar.3 with minecraft:trident{Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:2}],display:{Name:'{"text":"三叉戟","color":"aqua","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator,tag=withTrident3] hotbar.3 with minecraft:trident{Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:3}],display:{Name:'{"text":"三叉戟","color":"aqua","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator,tag=withRocket] hotbar.3 with minecraft:firework_rocket{display:{Name:'{"text":"烟花火箭","color":"light_purple","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator,tag=withBow] hotbar.3 with minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}],display:{Name:'{"text":"史莱姆弓","color":"green","bold":true,"italic":false}'}}
item replace entity @a[tag=!spec,gamemode=!spectator] hotbar.5 with minecraft:warped_fungus_on_a_stick{Unbreakable:1b,display:{Name:'{"text":"返回上一记录点","color":"yellow","bold":true,"italic":false}'}}


# Tracking runners' time elasped
scoreboard players add @a[gamemode=!spectator] tick_elapsed 1
# min
execute as @a run scoreboard players operation @s min_elapsed = @s tick_elapsed
execute as @a run scoreboard players operation @s min_elapsed /= CONST_1200 data
# sec
execute as @a run scoreboard players operation @s sec_elapsed = @s tick_elapsed
execute as @a run scoreboard players operation @s sec_elapsed %= CONST_1200 data
execute as @a run scoreboard players operation @s sec_elapsed /= CONST_20 data
# milli-sec
execute as @a run scoreboard players operation @s millisec_elapsed = @s tick_elapsed
execute as @a run scoreboard players operation @s millisec_elapsed %= CONST_20 data
execute as @a run scoreboard players operation @s millisec_elapsed *= CONST_5 data

# Game time
scoreboard players remove GAME tick_elapsed 1
# execute if score GAME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
# execute if score GAME tick_elapsed matches 100 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒钟后打开！"}]
# execute if score GAME tick_elapsed matches 120 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
# execute if score GAME tick_elapsed matches 120 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒钟后打开！"}]
# execute if score GAME tick_elapsed matches 140 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
# execute if score GAME tick_elapsed matches 140 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒钟后打开！"}]
# execute if score GAME tick_elapsed matches 160 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
# execute if score GAME tick_elapsed matches 160 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒钟后打开！"}]
# execute if score GAME tick_elapsed matches 180 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
# execute if score GAME tick_elapsed matches 180 run tellraw @a [{"text":"大门将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒钟后打开！"}]
# execute if score GAME tick_elapsed matches 200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
# execute if score GAME tick_elapsed matches 200 run tellraw @a [{"text":"大门已打开！开始你的跑酷之旅吧！","color":"yellow"}]
# execute if score GAME tick_elapsed matches 200 run fill 550 233 559 552 232 559 minecraft:air

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 6220.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:quakecraft
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:quakecraft master @s ~ ~ ~ 0.2 1

# Extra bossbar settings
execute store result bossbar minecraft:the_mountain value run scoreboard players get GAME tick_elapsed

# Miscs
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:egg"}}]

# Check if a game is over
execute if score GAME tick_elapsed matches ..0 run function game:general/timeout
execute unless entity @a[gamemode=!spectator,tag=!finished] run function game:general/timeout
