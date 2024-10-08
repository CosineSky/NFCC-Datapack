scoreboard players add @e[type=warden] MWWardenTimer 1
execute if entity @e[scores={MWWardenTimer=1200}] run tellraw @a {"text": "场上的监守者离开了。","color": "gray"}
kill @e[scores={MWWardenTimer=1200}]