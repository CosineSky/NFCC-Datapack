execute at @s run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1,Colors:[I;16714507],FadeColors:[I;16776960]}],Flight:1}}}}

# Zombie passive - Soulstealer
execute if score @s class matches 1 run effect give @s instant_health 1 1 true
execute if score @s class matches 1 run tellraw @s [{"text":"你触发了僵尸被动技能 - ","color":"yellow"},{"text":"窃魂","color":"green","bold":true},"！"]
execute at @s if score @s class matches 1 run playsound entity.zombie.death master @s ~ ~ ~ 1 1

# Creeper passive - Escape
execute if score @s class matches 5 run tellraw @s [{"text":"你触发了爬行者被动技能 - ","color":"yellow"},{"text":"逃逸","color":"green","bold":true},"！"]
execute at @s if score @s class matches 5 run playsound entity.creeper.death master @s ~ ~ ~ 1 1
execute if score @s class matches 5 run effect give @s speed 5 3 true
execute if score @s class matches 5 at @s run effect give @a[distance=..5] blindness 5 0 true
execute if score @s class matches 5 at @s run effect clear @s blindness
execute if score @s class matches 5 at @s run title @a[distance=..5] title ""
execute if score @s class matches 5 at @s run title @a[distance=..5] subtitle ["",{"selector":"@s","color":"green","bold":true},{"text":" 的技能","color":"yellow"},{"text":"“逃逸”","color":"gold"},{"text":"给予了你失明效果！","color":"yellow"}]
execute if score @s class matches 5 at @s run title @s subtitle ""

advancement revoke @s only game:kill_melee