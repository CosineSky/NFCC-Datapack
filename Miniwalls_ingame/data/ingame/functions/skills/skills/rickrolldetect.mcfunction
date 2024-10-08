execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run item replace entity @a[limit=1,sort=nearest,tag=!spec,gamemode=!spectator,distance=..1] hotbar.8 with minecraft:music_disc_far{RickrollRelease:1b}
execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"selector":"@a[tag=!spec,gamemode=!spectator,distance=..1]"},{"text": "拾取了奇妙的唱片。","bold": true,"color": "yellow"}]

execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]
execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "                       奇妙的唱片","color": "gold","bold": true}]
execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "   ·具有奇妙的功能。 :)","color": "gold"}]
execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tellraw @a [{"text": "=====================================================","color": "gold"}]


execute as @e[tag=RickrollMarker,tag=skillnow] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tag @s remove skillnow
execute as @e[tag=RickrollMarker] at @s if entity @a[tag=!spec,gamemode=!spectator,distance=..1] run tp @s ~ ~-100 ~