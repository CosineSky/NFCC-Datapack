# Skeleton passive - Toughness
execute if score @s class matches 3 if score RNG tick_elapsed matches 1..11 run tellraw @s [{"text":"你触发了骷髅被动技能 - ","color":"yellow"},{"text":"坚韧","color":"green","bold":true},"！"]
execute if score @s class matches 3 if score RNG tick_elapsed matches 1..11 at @s[scores={class=3}] run particle minecraft:enchant ~ ~1 ~ 0.25 1 0.25 0.1 50
execute if score @s class matches 3 if score RNG tick_elapsed matches 1..11 at @s[scores={class=3}] run effect give @s minecraft:resistance 4 0 true
execute if score @s class matches 3 if score RNG tick_elapsed matches 1..11 as @s[scores={class=3}] run playsound minecraft:entity.skeleton.hurt master @s ~ ~ ~ 1 1

# Enderman passive - Fears
execute if score RNG tick_elapsed matches 1..33 run tellraw @s[scores={class=4}] [{"text":"你触发了末影人被动技能 - ","color":"yellow"},{"text":"畏惧","color":"green","bold":true},"！"]
execute if score RNG tick_elapsed matches 1..33 at @s[scores={class=4}] run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 1
execute if score RNG tick_elapsed matches 1..33 run effect give @s[scores={class=4}] minecraft:blindness 3 0 true

advancement revoke @s only game:hurt_ranged