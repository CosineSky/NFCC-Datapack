execute as @s[scores={bingo_difficulty=1}] run function game:settings/change/item_difficulty/tier_1
execute as @s[scores={bingo_difficulty=2}] run function game:settings/change/item_difficulty/tier_2
execute as @s[scores={bingo_difficulty=3}] run function game:settings/change/item_difficulty/tier_3

scoreboard players set @s bingo_difficulty 0