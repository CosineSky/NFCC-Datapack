# Title prompt
title @s title ""
execute if score @s journey_level matches 2 run title @s subtitle ["-[ ",{"text":"请遵守交通规则","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 3 run title @s subtitle ["-[ ",{"text":"不要在石林中迷路","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 4 run title @s subtitle ["-[ ",{"text":"激流勇进","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 5 run title @s subtitle ["-[ ",{"text":"当心蜘蛛","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 6 run title @s subtitle ["-[ ",{"text":"穿梭蛛网丛林","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 7 run title @s subtitle ["-[ ",{"text":"飞越山崖","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 8 run title @s subtitle ["-[ ",{"text":"又见红绿灯","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 9 run title @s subtitle ["-[ ",{"text":"惊险一跃","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 10 run title @s subtitle ["-[ ",{"text":"躲避山岩机关","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 11 run title @s subtitle ["-[ ",{"text":"岔路口","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 12 run title @s subtitle ["-[ ",{"text":"击打飞“鸡”","color":"aqua","bold":true}," ]-"]
execute if score @s journey_level matches 13 run title @s subtitle ["-[ ",{"text":"史莱姆射击","color":"aqua","bold":true}," ]-"]

# Additional prompt
execute if score @s journey_level matches 2 run tellraw @s ["Tips >> ",{"text":"你只能在绿灯或黄灯时进行移动。","color":"gray","bold":true}]
execute if score @s journey_level matches 6 run tellraw @s ["Tips >> ",{"text":"同时，你需要避免被火焰灼烧。","color":"gray","bold":true}]
execute if score @s journey_level matches 9 run tellraw @s ["Tips >> ",{"text":"使用激流三叉戟来将自己发射到高处的平台。","color":"gray","bold":true}]
execute if score @s journey_level matches 13 run tellraw @s ["Tips >> ",{"text":"射击史莱姆加速下落；下落至起始点以开始新的一圈。","color":"gray","bold":true}]