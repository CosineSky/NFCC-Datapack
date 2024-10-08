
execute if entity @e[type=item,nbt={Item:{tag:{RickrollRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{RickrollRelease:1b}}}] run tag @p add rickrollreleaser
execute if entity @e[type=item,nbt={Item:{tag:{RickrollRelease:1b}}}] as @e[type=item,nbt={Item:{tag:{RickrollRelease:1b}}}] run kill @s
execute as @a[tag=rickrollreleaser] run stopsound @a master
execute if entity @a[tag=rickrollreleaser] as @a at @s run playsound minecraft:rickroll master @s ~ ~ ~ 0.3 1 1
execute as @a[tag=rickrollreleaser] run scoreboard players set MWBGM data 1
execute as @a[tag=rickrollreleaser] run scoreboard players set MWDURINGRICKROLL data 1
execute if entity @a[tag=rickrollreleaser] run tellraw @a [{"selector":"@a[tag=rickrollreleaser]"},{"text": "使用了神奇的唱片，对所有人发动了rickroll。","color": "yellow","bold": true}]
tag @a remove rickrollreleaser