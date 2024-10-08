PLAYER_COUNT = 12

for i in range(1, 1 + PLAYER_COUNT):
    fw = open(str(i) + ".mcfunction", "w")
    fw.write('execute in multi:bingo run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '}] 0 0 0\n\
    execute in multi:bingo run tp @e[tag=bingo_table_background,tag=player_' + str(i) + '] 0 0 0')


