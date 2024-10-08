# Init
scoreboard players set GAME_RED data 0
scoreboard players set GAME_ORANGE data 0
scoreboard players set GAME_YELLOW data 0
scoreboard players set GAME_GREEN data 0
scoreboard players set GAME_DARK_GREEN data 0
scoreboard players set GAME_AQUA data 0
scoreboard players set GAME_BLUE data 0
scoreboard players set GAME_DARK_PURPLE data 0
scoreboard players set GAME_LIGHT_PURPLE data 0
scoreboard players set GAME_BROWN data 0
scoreboard players set GAME_CYAN data 0

# Trigger
execute as @e[tag=board_scanner] at @s run function hall:paintboard/calculate
execute as @e[tag=board_scanner] at @s run tp @s @e[tag=board_start,limit=1,sort=nearest]