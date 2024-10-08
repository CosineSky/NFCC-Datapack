scoreboard players enable @s map_selector
advancement revoke @a only game:enter_bedwars

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                      Bedwars","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Yin-Yang","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger map_selector set 202"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Yin-Yang！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Setting Sails","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger map_selector set 202"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Setting Sails！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Streets","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 202"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Streets！"}}]
tellraw @s ["",{"text":" D","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Golden Meadow","color":"gold","clickEvent":{"action":"run_command","value":"/trigger map_selector set 202"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Golden Meadow！"}}]
tellraw @s ["",{"text":" E","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"???","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 0"},"hoverEvent":{"action":"show_text","value":"Coming Soon!"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}