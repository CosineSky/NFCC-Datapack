# Spider passive - Weavor
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 run tellraw @s [{"text":"你触发了蜘蛛被动技能 - ","color":"yellow"},{"text":"编织","color":"green","bold":true},"！"]
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run particle minecraft:end_rod ~ ~ ~ 0.25 1 0.25 0.1 66
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run playsound minecraft:entity.spider.hurt master @a[distance=..4] ~ ~ ~ 0.5 1
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run execute as @a[distance=..4] at @s run summon marker ~ ~ ~ {Tags:["spider_web"]}
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run kill @e[tag=spider_web,limit=1,sort=nearest]
scoreboard players set @e[tag=spider_web] tick_elapsed 0
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run title @a[distance=..4] title ""
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run title @a[distance=..4] subtitle ["",{"selector":"@s","color":"green","bold":true},{"text":" 发动了被动技能","color":"yellow"},{"text":"“编织”","color":"gold"},{"text":"！","color":"yellow"}]
execute if score @s class matches 2 if score RNG tick_elapsed matches 1..11 at @s run title @s subtitle ""

advancement revoke @s only game:hurt_melee