advancement revoke @s only game:abilities/skeleton
scoreboard players set @s tick_elapsed 900

give @s minecraft:arrow 12
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:firework ~ ~ ~ 0.25 1.5 0.25 0.1 66

tellraw @s ["[⭐] ",{"text":"你释放了骷髅的","color":"yellow"},{"text":"箭术","color":"white","bold":true},{"text":"主动技！","color":"yellow"}]