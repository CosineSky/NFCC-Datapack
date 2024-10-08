# Create the generators
execute as @e[type=minecraft:marker,tag=base_generator] at @s unless entity @e[type=minecraft:armor_stand,tag=iron_gen,distance=..5] run summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["gen","iron_gen"],NoGravity:1b,Invisible:1b}
execute as @e[type=minecraft:marker,tag=base_generator] at @s unless entity @e[type=minecraft:armor_stand,tag=gold_gen,distance=..5] run summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["gen","gold_gen"],NoGravity:1b,Invisible:1b}
execute as @e[type=minecraft:marker,tag=diamond_generator] at @s unless entity @e[type=minecraft:armor_stand,tag=diamond_gen,distance=..5] run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["gen","diamond_gen","public_gen"],NoGravity:1b,Invisible:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}
execute as @e[type=minecraft:marker,tag=emerald_generator] at @s unless entity @e[type=minecraft:armor_stand,tag=emerald_gen,distance=..5] run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["gen","emerald_gen","public_gen"],NoGravity:1b,Invisible:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}]}

# Rotate the generators
execute as @e[type=minecraft:armor_stand,tag=gen] store result score @s gen_rotation run data get entity @s Rotation[0]
execute as @e[type=minecraft:armor_stand,tag=gen] run scoreboard players add @s gen_rotation 6
execute as @e[type=minecraft:armor_stand,tag=gen] store result entity @s Rotation[0] float 1.0 run scoreboard players get @s gen_rotation

# Generate resources at bases(Iron:0.75s, Gold:8s)
execute as @e[type=minecraft:armor_stand,tag=iron_gen] run scoreboard players remove @s tick_elapsed 1
execute as @e[type=minecraft:armor_stand,tag=iron_gen] at @s if score @s tick_elapsed matches ..0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=iron_gen] at @s if score @s tick_elapsed matches ..0 run scoreboard players set @s tick_elapsed 15
execute as @e[type=minecraft:armor_stand,tag=gold_gen] run scoreboard players remove @s tick_elapsed 1
execute as @e[type=minecraft:armor_stand,tag=gold_gen] at @s if score @s tick_elapsed matches ..0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=gold_gen] at @s if score @s tick_elapsed matches ..0 run scoreboard players set @s tick_elapsed 160

# Generate resources at public islands(Diamond:40s, Emerald:60s)
execute as @e[type=minecraft:armor_stand,tag=diamond_gen] run scoreboard players remove @s tick_elapsed 1
execute as @e[type=minecraft:armor_stand,tag=diamond_gen] at @s if score @s tick_elapsed matches ..0 run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=diamond_gen] at @s if score @s tick_elapsed matches ..0 run scoreboard players set @s tick_elapsed 800
execute as @e[type=minecraft:armor_stand,tag=emerald_gen] run scoreboard players remove @s tick_elapsed 1
execute as @e[type=minecraft:armor_stand,tag=emerald_gen] at @s if score @s tick_elapsed matches ..0 run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=emerald_gen] at @s if score @s tick_elapsed matches ..0 run scoreboard players set @s tick_elapsed 1200

# Particles effects
execute as @e[tag=diamond_gen] at @s run particle minecraft:dust 0.0 1.0 1.0 1.0 ~ ~1.75 ~ 0.5 1.5 0.5 0.1 2
execute as @e[tag=emerald_gen] at @s run particle minecraft:dust 0.0 1.0 0.0 1.0 ~ ~1.75 ~ 0.5 1.5 0.5 0.1 2

# Convert from ticks to secs
execute as @e[tag=public_gen] run scoreboard players operation @s sec_elapsed = @s tick_elapsed
execute as @e[tag=public_gen] run scoreboard players operation @s sec_elapsed /= CONST_20 data

# Display hovering information
execute as @e[tag=diamond_gen] at @s run setblock ~ ~1 ~ oak_sign{Text1:'["",{"text":"● 钻石生成点","color":"aqua"}," | ",{"color":"yellow","score":{"name":"@e[tag=diamond_gen,limit=1,sort=nearest]","objective":"sec_elapsed"}},"s"]'} replace
execute as @e[tag=emerald_gen] at @s run setblock ~ ~1 ~ oak_sign{Text1:'["",{"text":"● 绿宝石生成点","color":"green"}," | ",{"color":"yellow","score":{"name":"@e[tag=emerald_gen,limit=1,sort=nearest]","objective":"sec_elapsed"}},"s"]'} replace

# Prevent from being blocked
execute as @e[tag=gen] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:breakable

# Resets
execute as @e[tag=public_gen] at @s run data modify entity @s CustomName set from block ~ ~1 ~ Text1
execute as @e[tag=public_gen] at @s run setblock ~ ~1 ~ air replace
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sign"}}]