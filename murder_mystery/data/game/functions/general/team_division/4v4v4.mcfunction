tag @e[tag=bingo_table_entry,tag=player_1] add red
tag @e[tag=bingo_table_entry,tag=player_4] add red
tag @e[tag=bingo_table_entry,tag=player_7] add red
tag @e[tag=bingo_table_entry,tag=player_10] add red

tag @e[tag=bingo_table_entry,tag=player_2] add blue
tag @e[tag=bingo_table_entry,tag=player_5] add blue
tag @e[tag=bingo_table_entry,tag=player_8] add blue
tag @e[tag=bingo_table_entry,tag=player_11] add blue

tag @e[tag=bingo_table_entry,tag=player_3] add green
tag @e[tag=bingo_table_entry,tag=player_6] add green
tag @e[tag=bingo_table_entry,tag=player_9] add green
tag @e[tag=bingo_table_entry,tag=player_12] add green

scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 1
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 2
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 3
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 4
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 5
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 6
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 7
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 8
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 9
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 10
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 11
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 12

team join red @a[limit=1,team=,scores={bingo_player=1}]
team join blue @a[limit=1,team=,scores={bingo_player=2}]
team join green @a[limit=1,team=,scores={bingo_player=3}]

team join red @a[limit=1,team=,scores={bingo_player=4}]
team join blue @a[limit=1,team=,scores={bingo_player=5}]
team join green @a[limit=1,team=,scores={bingo_player=6}]

team join red @a[limit=1,team=,scores={bingo_player=7}]
team join blue @a[limit=1,team=,scores={bingo_player=8}]
team join green @a[limit=1,team=,scores={bingo_player=9}]

team join red @a[limit=1,team=,scores={bingo_player=10}]
team join blue @a[limit=1,team=,scores={bingo_player=11}]
team join green @a[limit=1,team=,scores={bingo_player=12}]