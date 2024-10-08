scoreboard players enable @s map_selector
advancement revoke @a only game:enter_journeys

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                    The Journeys","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Seasons","color":"green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 1"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Seasons！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Seas of Myths","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger map_selector set 2"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Seas of Myths！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"???","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 0"},"hoverEvent":{"action":"show_text","value":"Coming Soon!"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}