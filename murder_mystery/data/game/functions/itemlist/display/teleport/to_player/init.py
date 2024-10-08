PLAYER_COUNT = 12

for i in range(1, 1 + PLAYER_COUNT):
    fw = open(str(i) + ".mcfunction", "w")
    fw.write('execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_11] ^0.3 ^0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_12] ^0.15 ^0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_13] ^ ^0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_14] ^-0.15 ^0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_15] ^-0.3 ^0.3 ^1\n\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_21] ^0.3 ^0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_22] ^0.15 ^0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_23] ^ ^0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_24] ^-0.15 ^0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_25] ^-0.3 ^0.15 ^1\n\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_31] ^0.3 ^ ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_32] ^0.15 ^ ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_33] ^ ^ ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_34] ^-0.15 ^ ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_35] ^-0.3 ^ ^1\n\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_41] ^0.3 ^-0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_42] ^0.15 ^-0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_43] ^ ^-0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_44] ^-0.15 ^-0.15 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_45] ^-0.3 ^-0.15 ^1\n\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_51] ^0.3 ^-0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_52] ^0.15 ^-0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_53] ^ ^-0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_54] ^-0.15 ^-0.3 ^1\n\
    execute as @a[scores={bingo_player=' + str(i) + '}] at @s anchored eyes run tp @e[tag=bingo_table_entry,scores={bingo_player=' + str(i) + '},tag=board_55] ^-0.3 ^-0.3 ^1')