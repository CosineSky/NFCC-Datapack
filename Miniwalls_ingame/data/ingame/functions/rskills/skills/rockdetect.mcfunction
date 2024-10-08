execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:gold_block{Release:1b}
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了 天星 。","bold": true,"color": "yellow"}]



execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                     天星","color": "gold"}]
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·以前方12格为中心，降下巨大的星岩，","color": "gold"}]
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "    对8格范围内的所有玩家造成巨额伤害。不分敌我！","color": "gold"}]
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·若命中守卫者，削减其20%生命值。","color": "gold"}]
execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]




execute as @e[tag=RockMarker,tag=rskillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove rskillnow
execute as @e[tag=RockMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-153 ~