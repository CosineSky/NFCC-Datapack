item_en = ["acacia_planks", "birch_fence_gate", "bookshelf", "bow", "carrot", "cauldron", "chain", "cod_bucket", "copper_block", "crossbow", "dried_kelp_block", "dropper", "glass_pane", "glow_berries", "white_bed", "golden_boots", "golden_sword", "hopper", "iron_axe", "iron_pickaxe", "lapis_lazuli", "iron_block", "leather_helmet", "leather_horse_armor", "lectern", "lily_pad", "lime_dye", "melon_slice", "milk_bucket", "note_block", "piston", "potato", "rabbit", "rail", "redstone_torch", "repeater", "rose_bush", "salmon", "smithing_table", "white_banner"]
item_cn = ["金合欢木板", "白桦木栅栏门", "书架", "弓", "胡萝卜", "炼药锅", "锁链", "鳕鱼桶", "铜块", "弩", "干海带块", "投掷器", "玻璃板", "发光浆果", "白色床", "金靴子", "金剑", "漏斗", "铁斧", "铁镐", "青金石", "铁块", "皮革帽子", "皮革马铠", "讲台", "睡莲", "浅绿色染料", "西瓜片", "牛奶桶", "音符盒", "活塞", "土豆", "生兔肉", "铁轨", "红石火把", "红石中继器", "玫瑰丛", "生鲑鱼", "锻造台", "白色旗帜"]

for i in range(len(item_en)):
    fw = open(item_en[i] + ".mcfunction", "w", encoding="utf-8")
    fw.write('execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=red] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"' + item_cn[i] +'","color":"green"},{"text":"！","color":"yellow"}]\n\
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=blue] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"' + item_cn[i] + '","color":"green"},{"text":"！","color":"yellow"}]\n\
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=green] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"' + item_cn[i] + '","color":"green"},{"text":"！","color":"yellow"}]\n\
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=yellow] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"' + item_cn[i] + '","color":"green"},{"text":"！","color":"yellow"}]\n\n\
    execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=red] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514\n\
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=blue] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514\n\
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=green] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514\n\
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=' + item_en[i] + ',tag=yellow] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514\n\n\
    execute if entity @s[team=red] run tag @e[tag=bingo_item,tag=' + item_en[i] + '] add red\n\
    execute if entity @s[team=blue] run tag @e[tag=bingo_item,tag=' + item_en[i] + '] add blue\n\
    execute if entity @s[team=green] run tag @e[tag=bingo_item,tag=' + item_en[i] + '] add green\n\
    execute if entity @s[team=yellow] run tag @e[tag=bingo_item,tag=' + item_en[i] + '] add yellow\n\n\
    execute if entity @s[team=red] run execute as @e[tag=bingo_table_entry,tag=red] if entity @s[nbt={item:{id:"minecraft:' + item_en[i] + '"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}\n\
    execute if entity @s[team=blue] run execute as @e[tag=bingo_table_entry,tag=blue] if entity @s[nbt={item:{id:"minecraft:' + item_en[i] + '"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}\n\
    execute if entity @s[team=green] run execute as @e[tag=bingo_table_entry,tag=green] if entity @s[nbt={item:{id:"minecraft:' + item_en[i] + '"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}\n\
    execute if entity @s[team=yellow] run execute as @e[tag=bingo_table_entry,tag=yellow] if entity @s[nbt={item:{id:"minecraft:' + item_en[i] + '"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}')

