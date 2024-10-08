execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:feather{AirAttackRelease:1b}
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了Air attacker。","bold": true,"color": "yellow"}]

execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                    Air Attack","color": "gold","bold": true}]
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·跃至空中，发动下落攻击，击杀6格范围内的所有玩家。","color": "gold"}]
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·若击中守卫者，削减其8%的生命值。","color": "gold"}]
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·不分敌我！","color": "gold","bold": true}]
execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]

execute as @e[tag=AirAttackMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove skillnow
execute as @e[tag=AirAttackMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-100 ~