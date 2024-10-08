execute store result score LAMP_TMP data if block 527 181 -547 minecraft:redstone_block
execute if score LAMP_TMP data matches 0 run setblock 527 181 -547 minecraft:redstone_block
execute if score LAMP_TMP data matches 1 run setblock 527 181 -547 minecraft:air