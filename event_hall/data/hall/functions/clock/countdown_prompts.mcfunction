# Before the event starts
execute if score COUNT_DOWN tick_elapsed matches 30020 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"25","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score COUNT_DOWN tick_elapsed matches 30020 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score COUNT_DOWN tick_elapsed matches 24020 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"20","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score COUNT_DOWN tick_elapsed matches 24020 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score COUNT_DOWN tick_elapsed matches 18020 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"15","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score COUNT_DOWN tick_elapsed matches 18020 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score COUNT_DOWN tick_elapsed matches 12020 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"10","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score COUNT_DOWN tick_elapsed matches 12020 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score COUNT_DOWN tick_elapsed matches 6020 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score COUNT_DOWN tick_elapsed matches 6020 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1

execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 120 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"5","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 120 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 120 run title @a title {"text":"5","color":"green","bold":true}
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 100 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"4","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 100 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 100 run title @a title {"text":"4","color":"green","bold":true}
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 80 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"3","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 80 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 80 run title @a title {"text":"3","color":"green","bold":true}
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 60 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"2","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 60 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 60 run title @a title {"text":"2","color":"green","bold":true}
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 40 run tellraw @a [{"text":"[⌚] "},{"text":"距离小游戏联赛开始还有","color":"yellow"},{"text":"1","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 40 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 0 if score COUNT_DOWN tick_elapsed matches 40 run title @a title {"text":"1","color":"green","bold":true}

# Voting
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -540 run tellraw @a [{"text":"[⌚] "},{"text":"距离投票结束还有","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -540 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -540 run title @a title {"text":"5","color":"green","bold":true}
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -560 run tellraw @a [{"text":"[⌚] "},{"text":"距离投票结束还有","color":"yellow"},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -560 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -560 run title @a title {"text":"4","color":"green","bold":true}
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -580 run tellraw @a [{"text":"[⌚] "},{"text":"距离投票结束还有","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -580 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -580 run title @a title {"text":"3","color":"green","bold":true}
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -600 run tellraw @a [{"text":"[⌚] "},{"text":"距离投票结束还有","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -600 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -600 run title @a title {"text":"2","color":"green","bold":true}
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -620 run tellraw @a [{"text":"[⌚] "},{"text":"距离投票结束还有","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -620 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches -620 run title @a title {"text":"1","color":"green","bold":true}

# Between minigames
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 1220 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"60","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 1220 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 620 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"30","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 620 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 120 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"5","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 120 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 100 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"4","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 100 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 80 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"3","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 80 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 60 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"2","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 60 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 40 run tellraw @a [{"text":"[⌚] "},{"text":"距离下个小游戏开始还有","color":"yellow"},{"text":"1","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 40 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1

# Before final duels
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 1220 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"60","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 1220 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 620 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"30","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 620 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 120 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"5","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 120 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 100 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"4","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 100 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 80 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"3","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 80 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 60 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"2","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..5 if score COUNT_DOWN tick_elapsed matches 60 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 40 run tellraw @a [{"text":"[⌚] "},{"text":"距离最终决斗开始还有","color":"yellow"},{"text":"1","color":"red","bold":true},{"text":"秒！","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches 6 if score COUNT_DOWN tick_elapsed matches 40 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1

execute if score EVENT_STARTED data matches 1 if score PLAYED_GAMES data matches ..6 if score COUNT_DOWN tick_elapsed matches 1230 run function hall:fireworks/night