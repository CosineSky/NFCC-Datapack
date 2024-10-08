advancement revoke @s only game:shoot_slime

effect give @s blindness 1 0 true
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
execute at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1
execute at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tp @s ~ ~-5 ~