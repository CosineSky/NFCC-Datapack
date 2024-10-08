advancement revoke @s only game:abilities/blaze
scoreboard players set @s tick_elapsed 1200

execute at @s run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:["blaze_ability","middle"],NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}]}
execute at @s run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:["blaze_ability","left"],NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}]}
execute at @s run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:["blaze_ability","right"],NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}]}
execute as @e[tag=blaze_ability] at @s store result entity @s Rotation[0] float 1.0 run data get entity @p Rotation[0]
execute as @e[tag=blaze_ability] at @s store result entity @s Rotation[1] float 1.0 run data get entity @p Rotation[1]

execute as @e[tag=blaze_ability,tag=left] store result score @s gen_rotation run data get entity @s Rotation[0]
scoreboard players add @e[tag=blaze_ability,tag=left] gen_rotation 10
execute as @e[tag=blaze_ability,tag=left] store result entity @s Rotation[0] float 1.0 run scoreboard players get @s gen_rotation

execute as @e[tag=blaze_ability,tag=right] store result score @s gen_rotation run data get entity @s Rotation[0]
scoreboard players remove @e[tag=blaze_ability,tag=right] gen_rotation 10
execute as @e[tag=blaze_ability,tag=right] store result entity @s Rotation[0] float 1.0 run scoreboard players get @s gen_rotation

execute at @s run playsound minecraft:entity.blaze.shoot voice @a[distance=..4] ~ ~ ~ 1 1
schedule function game:abilities/blaze/remove2 98t

tellraw @s ["[⭐] ",{"text":"你释放了烈焰人的","color":"yellow"},{"text":"献祭","color":"gold","bold":true},{"text":"主动技！","color":"yellow"}]