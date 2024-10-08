execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:golden_shovel{Damage:31,Enchantments:[{id:"minecraft:knockback",lvl:60s}]}
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了Super Shovel。","bold": true,"color": "yellow"}]

execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                     Super Shovel","color": "gold","bold": true}]
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·没什么威力，但是可以一铲子把别人拍飞。","color": "gold"}]
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·只能拍一铲子。","color": "gold"}]
execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]



execute as @e[tag=SuperShovelMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove skillnow
execute as @e[tag=SuperShovelMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-100 ~
