execute if score GAME tick_elapsed matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 100 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 120 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 120 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 140 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 140 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 160 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 160 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 180 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 180 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 200 run effect give @a minecraft:resistance 60 5 true
execute if score GAME tick_elapsed matches 200 in game:custom run clone -600 53 -105 -582 53 -87 -600 56 -105 masked move
execute if score GAME tick_elapsed matches 200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 200 run tellraw @a ["[⚔]",{"text":"游戏已开始！战斗将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 200 as @e[tag=starting_spot,limit=12] at @s run setblock ~ ~1 ~ minecraft:air

execute if score GAME tick_elapsed matches 1300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1300 run tellraw @a [{"text":"战斗将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1320 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1320 run tellraw @a [{"text":"战斗将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1340 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1340 run tellraw @a [{"text":"战斗将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1360 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1360 run tellraw @a [{"text":"战斗将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1380 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score GAME tick_elapsed matches 1380 run tellraw @a [{"text":"战斗将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒钟后开启！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1401 run function game:ingame/classes/kits
execute if score GAME tick_elapsed matches 1400 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 1400 run tellraw @a [{"text":"战斗模式已开启，祝你好运！","color":"yellow"}]
execute if score GAME tick_elapsed matches 1400 run tellraw @a ["[⚠] ",{"text":"请注意，边界开始收缩...","color":"red"}]
execute if score GAME tick_elapsed matches 1400 run worldborder set 200 300

execute if score GAME tick_elapsed matches 2600 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 2600 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"分钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 3800 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 3800 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"分钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 5000 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 5000 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"分钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 5000 run tellraw @a ["[⚠] ",{"text":"请注意，所有玩家获得了发光效果！","color":"red"}]
execute if score GAME tick_elapsed matches 5000 run effect give @a[tag=!spec] glowing 114514 1 true
execute if score GAME tick_elapsed matches 6200 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 6200 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟后开始！","color":"yellow"}]

execute if score GAME tick_elapsed matches 7300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7300 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7320 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7320 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7340 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7340 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7360 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7360 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7380 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7380 run tellraw @a [{"text":"最终对决将在","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒钟后开始！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7400 run tellraw @a[gamemode=adventure] [{"text":"最终对决已开启！","color":"yellow"},{"text":"10","color":"green","bold":true},{"text":"秒内你免疫一切伤害。"}]
execute if score GAME tick_elapsed matches 7400 run stopsound @a
execute if score GAME tick_elapsed matches 7400 run scoreboard players set BGM tick_elapsed -32768
execute if score GAME tick_elapsed matches 7400 run stopsound @a master minecraft:survival_games_dm
execute if score GAME tick_elapsed matches 7400 run execute as @a at @s run playsound minecraft:survival_games_dm master @s ~ ~ ~ 0.2 1
execute if score GAME tick_elapsed matches 7400 run tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Dodgebolt ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
execute if score GAME tick_elapsed matches 7400 run tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:survival_games_dm"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}
execute if score GAME tick_elapsed matches 7400 run effect give @a minecraft:resistance 10 5 true
execute if score GAME tick_elapsed matches 7400 run effect give @a minecraft:regeneration 3 5 true
execute if score GAME tick_elapsed matches 7400 in game:custom run tp @a -591 53 -96
execute if score GAME tick_elapsed matches 7400 in game:custom run worldborder set 80
execute if score GAME tick_elapsed matches 7600 run tellraw @a[gamemode=adventure] [{"text":"伤害保护已取消。祝你好运！","color":"yellow"}]