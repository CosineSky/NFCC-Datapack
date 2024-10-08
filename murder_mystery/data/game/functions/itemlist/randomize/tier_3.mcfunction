## TIER 3
# Easy - 5
# Medium - 15
# Hard - 5

# Clear the previous bingo board
function game:itemlist/randomize/reset

## EASY
scoreboard players set @e[tag=bingo_item,tag=easy,limit=1,sort=random,scores={bingo_table=0}] bingo_table 1
scoreboard players set @e[tag=bingo_item,tag=easy,limit=1,sort=random,scores={bingo_table=0}] bingo_table 2
scoreboard players set @e[tag=bingo_item,tag=easy,limit=1,sort=random,scores={bingo_table=0}] bingo_table 3
scoreboard players set @e[tag=bingo_item,tag=easy,limit=1,sort=random,scores={bingo_table=0}] bingo_table 4
scoreboard players set @e[tag=bingo_item,tag=easy,limit=1,sort=random,scores={bingo_table=0}] bingo_table 5

## MEDIUM
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 6
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 7
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 8
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 9
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 10
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 11
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 12
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 13
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 14
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 15
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 16
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 17
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 18
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 19
scoreboard players set @e[tag=bingo_item,tag=medium,limit=1,sort=random,scores={bingo_table=0}] bingo_table 20

## HARD
scoreboard players set @e[tag=bingo_item,tag=hard,limit=1,sort=random,scores={bingo_table=0}] bingo_table 21
scoreboard players set @e[tag=bingo_item,tag=hard,limit=1,sort=random,scores={bingo_table=0}] bingo_table 22
scoreboard players set @e[tag=bingo_item,tag=hard,limit=1,sort=random,scores={bingo_table=0}] bingo_table 23
scoreboard players set @e[tag=bingo_item,tag=hard,limit=1,sort=random,scores={bingo_table=0}] bingo_table 24
scoreboard players set @e[tag=bingo_item,tag=hard,limit=1,sort=random,scores={bingo_table=0}] bingo_table 25

# Shuffle the order of bingo items
function game:itemlist/randomize/swap