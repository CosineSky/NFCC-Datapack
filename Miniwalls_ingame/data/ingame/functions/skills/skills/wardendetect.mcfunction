execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run execute at @e[tag=miniwallscenter] run summon warden ~ ~ ~
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.warden.emerge player @a ~ ~ ~ 1 1 1
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "没有拾取到任何技能，还在场地中央生成了一只Warden。⚠⚠⚠","bold": true,"color": "yellow"}]


execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                     Warden","color": "gold","bold": true}]
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·监守者将在场上停留一分钟。多个监守者存在时间独立计算。","color": "gold"}]
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·如果把它引向某一队的守卫者，会发生什么呢？:)","color": "gold"}]
execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]


execute as @e[tag=WardenMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove skillnow
execute as @e[tag=WardenMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-100 ~
