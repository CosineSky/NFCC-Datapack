advancement revoke @s only game:abilities/enderman
scoreboard players set @s tick_elapsed 300

effect give @s speed 5 0 true
execute at @s run summon marker ~ ~ ~ {Tags:["enderman_marker"]}
execute at @s run scoreboard players set @e[tag=enderman_marker,limit=1,sort=nearest] tick_elapsed 0 
execute at @s run playsound entity.evoker.prepare_wololo master @a[distance=..4] ~ ~ ~ 1 1

tellraw @s ["[⭐] ",{"text":"你释放了末影人的","color":"yellow"},{"text":"幻影","color":"dark_purple","bold":true},{"text":"主动技！","color":"yellow"}]