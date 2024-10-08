advancement revoke @p only game:abilities/creeper
scoreboard players set @s tick_elapsed 900

execute at @s run summon minecraft:armor_stand ~ ~-0.4 ~ {Tags:["creeper_ability"],AbsorptionAmount:0.1f,CustomNameVisible:1b,CustomName:'[{"text":"3","color":"green","bold":true}]',NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}

execute at @s run playsound minecraft:entity.creeper.primed voice @a[distance=..4] ~ ~ ~ 1 1
schedule function game:abilities/creeper/2 1s
schedule function game:abilities/creeper/1 2s
schedule function game:abilities/creeper/0 3s

tellraw @s ["[⭐] ",{"text":"你释放了爬行者的","color":"yellow"},{"text":"爆破","color":"green","bold":true},{"text":"主动技！","color":"yellow"}]