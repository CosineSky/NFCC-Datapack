execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:sculk_shrieker{LaserRelease:1b}
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了Laser。","bold": true,"color": "yellow"}]

execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                         Laser","color": "gold","bold": true}]
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·瞬间发射一道激光，对玩家造成10（❤5）穿透伤害。","color": "gold"}]
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·不能对守卫者造成伤害。","color": "gold"}]
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·不分敌我！","color": "gold","bold": true}]
execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]


execute as @e[tag=LaserMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove skillnow
execute as @e[tag=LaserMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-100 ~
