item_en = ["amethyst_shard", "blaze_powder", "candle", "cookie", "daylight_sensor", "dead_tube_coral_block", "diamond_hoe", "emerald", "enchanting_table", "fermented_spider_eye", "golden_apple", "grass_block", "magma_block", "name_tag", "prismarine", "pumpkin_pie", "redstone_lamp", "sticky_piston", "target", "tropical_fish"]
item_cn = ["紫水晶碎片", "烈焰粉", "蜡烛", "曲奇", "阳光传感器", "失活的管状珊瑚块", "钻石锄", "绿宝石", "附魔台", "发酵的蜘蛛眼", "金苹果", "草方块", "岩浆块", "命名牌", "海晶碎片", "南瓜派", "红石灯", "粘性活塞", "标靶", "热带鱼"]


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

