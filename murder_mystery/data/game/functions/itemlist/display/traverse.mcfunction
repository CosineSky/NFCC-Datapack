# This function calls itself recursively.
scoreboard players add BINGO_TABLE_TRAVERSE data 1
execute if score BINGO_TABLE_TRAVERSE data matches 1..25 run function game:itemlist/display/texture
execute if score BINGO_TABLE_TRAVERSE data matches 1..25 run function game:itemlist/display/traverse