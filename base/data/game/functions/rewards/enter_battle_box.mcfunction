scoreboard players enable @s map_selector
advancement revoke @a only game:enter_battle_box

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                    Battle Box","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Abstract Lava","color":"gold","clickEvent":{"action":"run_command","value":"/trigger map_selector set 101"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Abstract Lava！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Tic-Tac-Toe","color":"green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 102"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Tic-Tac-Toe！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Professor's Chamber","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger map_selector set 103"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Professor's Chamber！"}}]
tellraw @s ["",{"text":" D","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"???","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 0"},"hoverEvent":{"action":"show_text","value":"Coming Soon!"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}
