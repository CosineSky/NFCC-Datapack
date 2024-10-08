execute if entity @e[type=item,nbt={Item:{tag:{CreeperRainRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{CreeperRainRelease:1b}}}] run tag @p add creeperrainreleaser
execute if entity @e[type=item,nbt={Item:{tag:{CreeperRainRelease:1b}}}] as @e[type=item,nbt={Item:{tag:{CreeperRainRelease:1b}}}] run kill @s

execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser] run tellraw @a [{"text": "⚠⚠⚠","color": "light_purple","bold": true},{"selector":"@a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser]"},{"text": "释放了Creeper Rain ! ⚠⚠⚠","color": "light_purple","bold": true}]
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser] run playsound entity.tnt.primed player @a ~ ~ ~ 1 1 1
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser,team=MWgreen] run tag @a[team=!MWgreen] add rainon
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser,team=MWblue] run tag @a[team=!MWblue] add rainon
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser,team=MWyellow] run tag @a[team=!MWyellow] add rainon
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser,team=MWred] run tag @a[team=!MWred] add rainon
execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser] run scoreboard players set RAINTIMER data 100



#execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser] run tag @a add rainon



execute if entity @a[tag=!spec,gamemode=!spectator,tag=creeperrainreleaser] run tag @a[tag=creeperrainreleaser] remove creeperrainreleaser

execute if score RAINTIMER data matches 100 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 90 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 80 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 70 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 60 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 50 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 40 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 30 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 20 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}
execute if score RAINTIMER data matches 10 as @a[tag=rainon,gamemode=!spectator] at @s run summon creeper ~ ~40 ~ {Tags:[rain]}

execute as @e[tag=rain] at @s unless block ~ ~-2 ~ air run execute as @a[distance=..5] at @s run damage @s 20 minecraft:explosion
execute as @e[tag=rain] at @s unless block ~ ~-2 ~ air run execute as @a[distance=..5] at @s run tag @s add hurtbyrain
execute as @e[tag=rain] at @s unless block ~ ~-2 ~ air run playsound entity.generic.explode player @a ~ ~ ~ 1 1 0.5
execute as @e[tag=rain] at @s unless block ~ ~-2 ~ air run particle explosion ~ ~ ~ 1 1 1 0 100 force
execute as @e[tag=rain] at @s unless block ~ ~-2 ~ air run kill @s
execute as @a[tag=hurtbyrain,scores={MWDeathCount=1},tag=!spec] run tellraw @a [{"selector":"@a[tag=hurtbyrain,scores={MWDeathCount=1},tag=!spec]"},{"text": "死于Creeper Rain。R.I.P.","color": "gray"}]
execute as @a[tag=hurtbyrain,scores={MWDeathCount=1},tag=!spec] run tag @s add nogenericdeath

tag @a[tag=hurtbyrain] remove hurtbyrain
execute if score RAINTIMER data matches 1.. run scoreboard players remove RAINTIMER data 1
execute if score RAINTIMER data matches 0 run tag @a remove rainon