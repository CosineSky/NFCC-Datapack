scoreboard objectives add range_indicator_timer dummy "rangetimer"

execute if entity @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] run scoreboard players add RANGETIMER range_indicator_timer 31 
execute if entity @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] run summon marker ~ ~-1 ~ {Tags:[YamatoReleaser]}
execute if entity @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] run tag @p add releaser
execute if entity @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] as @e[type=item,nbt={Item:{tag:{YamatoRelease:1b}}}] run kill @s

execute as @e[tag=releaser] at @s if score RANGETIMER range_indicator_timer matches 1 run function yamato:test
execute as @e[tag=releaser] at @s if score RANGETIMER range_indicator_timer matches 1 run function yamato:lines/linesmain
execute if score RANGETIMER range_indicator_timer matches 31 run tellraw @a [{"selector":"@a[tag=releaser]","bold": true},{"text": "释放了次元斩·绝 ！","bold": true,"color": "gold"}]
execute if score RANGETIMER range_indicator_timer matches 1 run scoreboard players set @a[tag=releaser] MWDuringYamato 1
execute if score RANGETIMER range_indicator_timer matches 1 run clear @a[tag=releaser]
execute if score RANGETIMER range_indicator_timer matches 31 run effect give @a[tag=releaser] slowness 3 50 true
execute if score RANGETIMER range_indicator_timer matches 31 run effect give @a[tag=releaser] jump_boost 3 181 true
execute if score RANGETIMER range_indicator_timer matches 31 run effect give @a[tag=releaser] resistance 3 10 true
execute if score RANGETIMER range_indicator_timer matches 1 run effect give @a[tag=releaser] invisibility 2 50 true
execute if score RANGETIMER range_indicator_timer matches 1 at @a[tag=releaser] run particle electric_spark ~ ~1 ~ 0 0 0 1 1000 force
execute if score RANGETIMER range_indicator_timer matches 31 run time add 12000
execute if entity @e[tag=releaser] if score RANGETIMER range_indicator_timer matches 1 run execute at @e[tag=releaser] as @e[distance=..8,tag=!releaser] run tag @s add hurt
effect give @e[tag=hurt] slowness 1 50 false
effect give @e[tag=hurt] jump_boost 1 181 false
execute if score RANGETIMER range_indicator_timer matches 1.. run scoreboard players remove RANGETIMER range_indicator_timer 1

execute if entity @e[tag=YamatoReleaser] as @e[tag=YamatoReleaser] at @s run summon marker ^ ^ ^4 {Tags:[YamatoRangeAim2]}
execute if entity @e[tag=YamatoReleaser] as @e[tag=YamatoReleaser] at @s run function yamato:range_indicator
execute if entity @e[tag=YamatoReleaser] run schedule function yamato:killtags 3s
execute if entity @e[tag=YamatoReleaser] run schedule function yamato:cleartags 3.05s
kill @e[tag=YamatoReleaser]
kill @e[tag=YamatoRangeAim2]
