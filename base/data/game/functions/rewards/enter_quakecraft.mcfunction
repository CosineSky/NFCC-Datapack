scoreboard players enable @s map_selector
advancement revoke @a only game:enter_quakecraft

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                     Quakecraft","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Quake Town","color":"gold","clickEvent":{"action":"run_command","value":"/trigger map_selector set 301"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Quake Town！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Forsaken","color":"green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 302"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Forsaken！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Ruins","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 303"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Ruins！"}}]
tellraw @s ["",{"text":" D","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"???","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 0"},"hoverEvent":{"action":"show_text","value":"Coming Soon!"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}