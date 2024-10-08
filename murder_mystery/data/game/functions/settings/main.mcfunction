# Detecting players' operations
execute as @a[scores={fungus_stick=1..}] run function game:settings/activate

# Changing game settings
execute as @a[scores={bingo_settings=1..}] run function game:settings/change/set_team_division
execute as @a[scores={bingo_difficulty=1..}] run function game:settings/change/set_item_difficulty

# Making all players accessible to game settings
scoreboard players enable @a bingo_settings
scoreboard players enable @a bingo_difficulty