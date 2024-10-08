PLAYER_COUNT = 12
ROW, COL = 5, 5

fw = open("preset.mcfunction", "w")
for i in range(1, PLAYER_COUNT + 1):
    for j in range(1, ROW + 1):
        for k in range(1, COL + 1):
            fw.write('execute in multi:bingo run summon minecraft:item_display 0 0 0 {item:{id:"minecraft:bedrock",Count:1b},billboard:"center",transformation:[1.0f,0.0f,0.0f,0.0f, 0.0f,1.0f,0.0f,0.0f, 0.0f,0.0f,1.0f,0.0f, 0.0f,0.0f,0.0f,10.0f],Tags:["board_' + str(j) + str(k) + '","player_' + str(i) + '","bingo_table_entry"]}\n')