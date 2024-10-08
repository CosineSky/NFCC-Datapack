tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                    Bingo Settings","bold":true,"color":"yellow"}

tellraw @s [{"text":" ● ","color":"aqua"},{"text":"请选择分队模式:","color":"white","bold":true}]

execute if score @e[tag=bingo_settings,limit=1] data matches 1 run tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Two Teams","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 1"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Two Teams！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_settings,limit=1] data matches 1 run tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Two Teams","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 1"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Two Teams！"}}]

execute if score @e[tag=bingo_settings,limit=1] data matches 2 run tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Three Teams","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 2"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Three Teams！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_settings,limit=1] data matches 2 run tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Three Teams","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 2"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Three Teams！"}}]

execute if score @e[tag=bingo_settings,limit=1] data matches 3 run tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Four Teams","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 3"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Four Teams！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_settings,limit=1] data matches 3 run tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Four Teams","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_settings set 3"},"hoverEvent":{"action":"show_text","value":"点击选择分队模式：Four Teams！"}}]
tellraw @s ""

tellraw @s [{"text":" ● ","color":"aqua"},{"text":"请选择物品难度:","color":"white","bold":true}]

execute if score @e[tag=bingo_difficulty,limit=1] data matches 1 run tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Easy","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 1"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Easy！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_difficulty,limit=1] data matches 1 run tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Easy","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 1"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Easy！"}}]

execute if score @e[tag=bingo_difficulty,limit=1] data matches 2 run tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Medium","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 2"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Medium！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_difficulty,limit=1] data matches 2 run tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Medium","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 2"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Medium！"}}]

execute if score @e[tag=bingo_difficulty,limit=1] data matches 3 run tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Hard","color":"green","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 3"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Hard！"}},{"text":" (已选择)","color":"gray"}]
execute unless score @e[tag=bingo_difficulty,limit=1] data matches 3 run tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Hard","color":"red","clickEvent":{"action":"run_command","value":"/trigger bingo_difficulty set 3"},"hoverEvent":{"action":"show_text","value":"点击选择物品难度：Hard！"}}]
tellraw @s ""

tellraw @s [{"text":" ● ","color":"aqua"},{"text":"请选择游戏模式(暂不可用):","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Bingo Normal","color":"green","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","value":"点击选择游戏模式：Normal！"}},{"text":" (已选择)","color":"gray"}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Bingo Rush","color":"red","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","value":"点击选择游戏模式：Rush！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Bingo Manhunt","color":"red","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","value":"点击选择游戏模式：Manhunt！"}}]
tellraw @s ""

tellraw @s [{"text":" ● ","color":"aqua"},{"text":"请选择附加设置(暂不可用):","color":"white","bold":true}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Daylight Cycle","color":"green","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","value":"点击切换设置：Daylight Cycle！"}},{"text":" (已启用)","color":"gray"}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Keep Inventory","color":"green","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","value":"点击切换设置：Keep Inventory！"}},{"text":" (已启用)","color":"gray"}]
tellraw @s ""

tellraw @s {"text":"========================================","bold":true,"color":"gold"}

scoreboard players set @s fungus_stick 0