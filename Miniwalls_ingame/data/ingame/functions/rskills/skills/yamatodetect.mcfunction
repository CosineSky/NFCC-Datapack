execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:blaze_powder{YamatoRelease:1b}
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了Yamato。","bold": true,"color": "yellow"}]

execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                     Yamato","color": "gold"}]
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·你感受到了POWER。","color": "gold"}]
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·释放次元斩·绝，短暂蓄力后，化作刀光斩击敌人。不分敌我！","color": "gold"}]
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·刀光将冻结8格内的空间，瞬间对范围内的所有玩家造成巨额伤害。","color": "gold"}]
execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]

execute as @e[tag=YamatoMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove rskillnow
execute as @e[tag=YamatoMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-153 ~