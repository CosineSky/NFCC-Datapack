function hall:trophy/place
function hall:fireworks/yellow
function hall:paintboard/fill/red

stopsound @a master
function hall:trophy/cookie_rain
execute as @a at @s run playsound minecraft:endgame master @s ~ ~ ~ 0.8 1
item replace entity @a armor.head with minecraft:golden_helmet{HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s}]}

tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                  NFC小游戏联赛(二)","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"总冠军：","color":"white","bold":true}]
tellraw @a ["   ",{"selector":"@a[tag=champion,limit=1]","color":"red","bold":true}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"各玩家总得分：","color":"white","bold":true}]
execute as @a[tag=!spec] run tellraw @a ["   ",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"total_score_event"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a [{"text":"本届联赛到此结束，感谢各位玩家的参与！","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

scoreboard players set EVENT_STARTED data 0