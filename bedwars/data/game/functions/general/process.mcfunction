execute if score GAME tick_elapsed matches 3600 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 3600 run tellraw @a ["[⌚] ",{"text":"距离床自爆还有","color":"yellow"},{"text":"9","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 7200 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 7200 run tellraw @a ["[⌚] ",{"text":"距离床自爆还有","color":"yellow"},{"text":"6","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 10800 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 10800 run tellraw @a ["[⌚] ",{"text":"距离床自爆还有","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 12000 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 12000 run tellraw @a ["[⌚] ",{"text":"距离床自爆还有","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 13200 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 13200 run tellraw @a ["[⌚] ",{"text":"距离床自爆还有","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]

execute if score GAME tick_elapsed matches 14300 run title @a title [{"text":"-[ ","color":"gray"},{"text":"5","color":"dark_green","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 14320 run title @a title [{"text":"-[ ","color":"gray"},{"text":"4","color":"green","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 14340 run title @a title [{"text":"-[ ","color":"gray"},{"text":"3","color":"yellow","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 14360 run title @a title [{"text":"-[ ","color":"gray"},{"text":"2","color":"gold","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 14380 run title @a title [{"text":"-[ ","color":"gray"},{"text":"1","color":"red","bold":true}, " ]-"]

execute if score GAME tick_elapsed matches 14400 as @a at @s run playsound entity.wither.death master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 14400 run title @a title {"text":"所有床已经自爆！","color":"red","bold":true}
execute if score GAME tick_elapsed matches 14400 run title @a[gamemode=adventure] subtitle {"text":"祝你好运。","color":"yellow","bold":true}
execute if score GAME tick_elapsed matches 14400 run tellraw @a ["[⚠] ",{"text":"床已经自爆，所有玩家不能再复活！","color":"red"}]
execute if score GAME tick_elapsed matches 14400 run execute if score GAME tick_elapsed matches 10800
execute if score GAME tick_elapsed matches 14400 run fill -726 83 -784 -726 83 -785 air
execute if score GAME tick_elapsed matches 14400 run fill -646 83 -705 -647 83 -705 air
execute if score GAME tick_elapsed matches 14400 run fill -726 83 -625 -726 83 -626 air
execute if score GAME tick_elapsed matches 14400 run fill -806 83 -705 -805 83 -705 air

execute if score GAME tick_elapsed matches 15600 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 15600 run tellraw @a ["[⌚] ",{"text":"距离最终对决开始还有","color":"yellow"},{"text":"3","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 16800 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 16800 run tellraw @a ["[⌚] ",{"text":"距离最终对决开始还有","color":"yellow"},{"text":"2","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]
execute if score GAME tick_elapsed matches 18000 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 18000 run tellraw @a ["[⌚] ",{"text":"距离最终对决开始还有","color":"yellow"},{"text":"1","color":"green","bold":true},{"text":"分钟！","color":"yellow"}]

execute if score GAME tick_elapsed matches 19100 run title @a title [{"text":"-[ ","color":"gray"},{"text":"5","color":"dark_green","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 19120 run title @a title [{"text":"-[ ","color":"gray"},{"text":"4","color":"green","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 19140 run title @a title [{"text":"-[ ","color":"gray"},{"text":"3","color":"yellow","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 19160 run title @a title [{"text":"-[ ","color":"gray"},{"text":"2","color":"gold","bold":true}, " ]-"]
execute if score GAME tick_elapsed matches 19180 run title @a title [{"text":"-[ ","color":"gray"},{"text":"1","color":"red","bold":true}, " ]-"]

execute if score GAME tick_elapsed matches 19200 as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 19200 run worldborder center -726 -705
execute if score GAME tick_elapsed matches 19200 run summon minecraft:lightning_bolt -726 76 -705
execute if score GAME tick_elapsed matches 19200 run tp @a[team=red,gamemode=adventure] -741 85 -720
execute if score GAME tick_elapsed matches 19200 run tp @a[team=blue,gamemode=adventure] -710 85 -721
execute if score GAME tick_elapsed matches 19200 run tp @a[team=green,gamemode=adventure] -712 85 -689
execute if score GAME tick_elapsed matches 19200 run tp @a[team=yellow,gamemode=adventure] -742 85 -689
execute if score GAME tick_elapsed matches 19200 run title @a title {"text":"最终对决已开始！","color":"red","bold":true}
execute if score GAME tick_elapsed matches 19200 run title @a[gamemode=adventure] subtitle {"text":"胜利在望。","color":"yellow","bold":true}
execute if score GAME tick_elapsed matches 19200 run tellraw @a ["[⚠] ",{"text":"最终对决已开始，所有玩家被传送至中央岛屿。","color":"red"}]