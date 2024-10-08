# Manages slime spawner time
scoreboard players add @e[tag=slime_spawner] tick_elapsed 1
scoreboard players set @e[tag=slime_spawner,scores={tick_elapsed=160..}] tick_elapsed 0

# Spawns slime at each spawner
execute as @e[tag=slime_spawner,tag=1,scores={tick_elapsed=0}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=2,scores={tick_elapsed=20}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=3,scores={tick_elapsed=40}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=4,scores={tick_elapsed=60}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=5,scores={tick_elapsed=80}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=6,scores={tick_elapsed=100}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=7,scores={tick_elapsed=120}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}
execute as @e[tag=slime_spawner,tag=8,scores={tick_elapsed=140}] at @s run summon slime ~ ~ ~ {NoAI:1b,Size:3,AbsorptionAmount:114514f,CustomName:'{"text":"Flying Slime","color":"green"}',CustomNameVisible:1b}

# Let slimes FLY!
execute as @e[type=slime] at @s run tp @s ~ ~0.5 ~

# Removes slimes on top
execute as @e[type=slime] at @s run execute if entity @s[y=220,dy=10] run tp @s 0 -256 0

# Changing size
# execute as @e[type=slime,nbt={HurtTime:1s}] at @s if entity @s[y=0,dy=220] store result score @s data run data get entity @s Size
# execute as @e[type=slime,nbt={HurtTime:1s}] at @s if entity @s[y=0,dy=220] run scoreboard players remove @s data 1
# execute as @e[type=slime,nbt={HurtTime:1s}] at @s if entity @s[y=0,dy=220] store result entity @s Size int 1.0 run scoreboard players get @s data