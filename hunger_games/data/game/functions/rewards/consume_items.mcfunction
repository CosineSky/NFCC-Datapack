advancement revoke @s only game:consume_items

# Spider passive - Terror
execute if score @s class matches 2 run effect give @a[distance=..8,tag=!spec] nausea 12 1 true
execute if score @s class matches 2 run effect clear @s nausea
execute if score @s class matches 2 run tellraw @s [{"text":"你触发了蜘蛛被动技能 - ","color":"yellow"},{"text":"恐吓","color":"green","bold":true},"！"]
execute at @s if score @s class matches 2 run playsound entity.spider.ambient master @s ~ ~ ~ 1 1

# Enderman passive - Teleport
execute if score @s class matches 4 run effect give @s speed 3 2 true
execute if score @s class matches 4 run effect give @s weakness 3 0 true
execute if score @s class matches 4 at @s run tp @s @a[limit=1,sort=random,distance=..15,gamemode=adventure]
execute if score @s class matches 4 at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..4] ~ ~ ~ 1 1
execute if score @s class matches 4 run tellraw @s [{"text":"你触发了末影人被动技能 - ","color":"yellow"},{"text":"传送","color":"green","bold":true},"！"]