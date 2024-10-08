advancement revoke @p only game:abilities/spider
scoreboard players set @s tick_elapsed 900

execute at @s run playsound minecraft:entity.glow_squid.squirt master @a[distance=..4] ~ ~ ~ 1 1
execute at @s run particle minecraft:squid_ink ~ ~ ~ 4 0.01 4 0.01 666
execute at @s run effect give @a[distance=..4] minecraft:slowness 12 0 true
execute at @s run effect give @a[distance=..4] minecraft:poison 12 0 true
effect clear @s slowness
effect clear @s poison

tellraw @s ["[⭐] ",{"text":"你释放了蜘蛛的","color":"yellow"},{"text":"毒液","color":"gray","bold":true},{"text":"主动技！","color":"yellow"}]