execute if score INGAME data matches 0 run function game:settings/main
execute if score INGAME data matches 1 run function game:trigger/loop
execute if score INGAME data matches 1 run function game:general/main

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}

# Waiting room options
execute if score STARTED data matches 1 if score INGAME data matches 0 run clear @a
execute if score STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.2 with minecraft:paper{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§e§l游戏说明"},{"text":" - "},{"text":"§7打开物品栏以观看"}]',Lore:['{"text":""}','{"text":"§bBingo§f世界采用§aMinecraft§f默认地形生成器生成，但是:"}','{"text":"§c§l - §7村庄、沙漠神殿等自然结构不会随世界生成"}','{"text":"§c§l - §7玩家无法搭建下界传送门以进入下界"}','{"text":""}','{"text":"§f这使得一些资源的获取变得十分困难 :("}','{"text":"§f作为补偿，这个世界产生了一些魔法以帮助玩家获得资源:"}','{"text":"§a§l + §7不同生物群系中的草有小概率掉落特定农作物种子"}','{"text":"§a§l + §7女巫有极小概率掉落粘液球和烈焰棒"}','{"text":"§a§l + §7海晶碎片可以通过击杀鱿鱼或者钓鱼来获得"}','{"text":"§a§l + §7在夜晚时钓鱼有极小概率获得幻翼膜"}','{"text":"§a§l + §7增加了钟、鞍等原版无法合成物品的合成配方"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:warped_fungus_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§b§l游戏设置"},{"text":" - "},{"text":"§7右键"}]'}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.6 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键（无法撤销）"}]'}}

# Getting ready
execute as @a[scores={carrot_stick=1,ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"✔","color":"green"},{"text":"] "},{"selector":"@s","color":"gold"},{"text":" 已经做好了准备！"}]
scoreboard players set @a[scores={carrot_stick=1}] ready 1
scoreboard players set @a[scores={carrot_stick=1,ready=1}] carrot_stick 0

# Starting game
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set STARTED data 1
execute unless entity @a[tag=!spec,scores={ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"⚔","color":"yellow"},{"text":"] "},{"text":" 所有玩家准备就绪，游戏即将开始！","color":"green"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a reset
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a title {"text":"游戏即将开始！","color":"green","bold":true}
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Overworld","color":"gold"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run schedule function game:general/start_game 5s
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set @a ready 0

# temp
function game:itemlist/display/teleport/loop