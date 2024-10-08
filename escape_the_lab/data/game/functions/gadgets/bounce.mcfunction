# Controls the tag of players
execute run scoreboard players set @a[tag=!batBounce] journey_fall 0
execute run scoreboard players add @a[tag=batBounce] journey_fall 1
tag @a[scores={journey_fall=4..}] remove batBounce


execute run effect clear @a[tag=!batBounce] levitation
execute run effect give @a[tag=batBounce] levitation 1 75 true
execute as @a[scores={journey_fall=1}] at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1 1
execute as @a[scores={journey_fall=1}] at @s run particle happy_villager ~ ~ ~ 0.25 0.5 0.25 0.01 33