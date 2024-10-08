# Adding points.
scoreboard players add BRIDGE_RED data 1

# Celebrations. (TODO)
title @a title {"text":"⭐","color":"red","bold":true}
title @a subtitle [{"selector":"@a[limit=1,tag=first]","color":"red"},{"text":" 成功得分！","color":"yellow"}]
execute as @a at @s run particle minecraft:elder_guardian ~ ~ ~ ~ ~ ~ 0.1 1
execute as @e[tag=bridge_goal_red] at @s run summon minecraft:lightning_bolt ~ ~-3 ~
execute as @e[tag=bridge_fireworks] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16714507],FadeColors:[I;16711859]}],Flight:1}}}}
schedule function game:general/rounds/announce_scores 2s

# Judging if blue has won.
execute if score BRIDGE_RED data matches 5.. run function game:general/won/red

# Continuing the game if blue hasn't won yet.
execute if score BRIDGE_RED data matches ..4 run function game:general/rounds/new_round
execute if score BRIDGE_RED data matches ..4 run tellraw @a [{"text":"[⭐] "},{"selector":"@a[limit=1,tag=first]","color":"red","bold":true},{"text":"成功得分，下一轮将在","color":"yellow","bold":true},{"text":"10","color":"green","bold":true},{"text":"秒后继续！","color":"yellow","bold":true}]