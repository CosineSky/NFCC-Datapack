item_en = ["amethyst_shard", "blaze_powder", "candle", "cookie", "daylight_sensor", "dead_tube_coral_block", "diamond_hoe", "emerald", "enchanting_table", "fermented_spider_eye", "golden_apple", "grass_block", "magma_block", "name_tag", "prismarine", "pumpkin_pie", "redstone_lamp", "sticky_piston", "target", "tropical_fish"]
item_cn = ["紫水晶碎片", "烈焰粉", "蜡烛", "曲奇", "阳光传感器", "失活的管状珊瑚块", "钻石锄", "绿宝石", "附魔台", "发酵的蜘蛛眼", "金苹果", "草方块", "岩浆块", "命名牌", "海晶碎片", "南瓜派", "红石灯", "粘性活塞", "标靶", "热带鱼"]

for i in range(len(item_en)):
    fw = open(item_en[i] + ".mcfunction", "w", encoding="utf-8")
    fw.write('execute if entity @e[tag=bingo_item,tag=' + item_en[i] + ',scores={bingo_table=1..}] run function game:itemlist/acquire/confirm/hard/' + item_en[i])