# Teleporting in-game
scoreboard players enable @a bingo_team_tp
execute as @a[scores={bingo_team_tp=1..}] run function game:trigger/team_tp

# Voting to end a game in advance
scoreboard players enable @a[scores={bingo_vote_end=0}] bingo_vote_end
execute as @a[scores={bingo_vote_end=1}] run function game:trigger/vote_end