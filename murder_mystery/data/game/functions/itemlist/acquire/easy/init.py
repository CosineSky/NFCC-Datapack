item_en = ["arrow", "barrel", "birch_boat", "bone", "bowl", "campfire", "charcoal", "clay_ball", "cobbled_deepslate", "composter", "cooked_porkchop", "cut_sandstone", "dandelion", "feather", "fishing_rod", "flint", "flint_and_steel", "glass_bottle", "gunpowder", "ink_sack", "item_frame", "leather", "lightning_rod", "magenta_dye", "oak_trapdoor", "painting", "paper", "poppy", "raw_gold", "raw_mutton", "rotten_flesh", "seed", "shears", "smoker", "spider_eye", "stone_bricks", "stone_hoe", "string", "tripwire_hook", "wooden_shovel"]
item_cn = ["箭", "木桶", "白桦木船", "骨头", "碗", "营火", "木炭", "黏土球", "深板岩圆石", "堆肥桶", "熟猪排", "切制砂岩", "蒲公英", "羽毛", "钓鱼竿", "燧石", "打火石", "玻璃瓶", "火药", "墨囊", "物品展示框", "皮革", "避雷针", "品红色染料", "橡木活板门", "画", "纸", "虞美人", "粗金", "生羊肉", "腐肉", "小麦种子", "剪刀", "烟熏炉", "蜘蛛眼", "石砖", "石锄", "线", "绊线钩", "木铲"]

for i in range(len(item_en)):
    fw = open(item_en[i] + ".mcfunction", "w", encoding="utf-8")
    fw.write('execute if entity @e[tag=bingo_item,tag=' + item_en[i] + ',scores={bingo_table=1..}] run function game:itemlist/acquire/confirm/easy/' + item_en[i])

