execute unless entity @e[tag=rskillnow] run data merge entity @e[tag=miniwallsrskillblock,limit=1] {block_state:{Name:"air"}}
execute if entity @e[tag=rskillnow] run data merge entity @e[tag=miniwallsrskillblock,limit=1] {block_state:{Name:"minecraft:ender_chest"}}

execute unless entity @e[tag=rskillnow] run data merge entity @e[tag=miniwallsrskilltext,limit=1] {text:'[{"text":"EMPTY","color":"gray"}]'}
execute if entity @e[tag=rskillnow] run data merge entity @e[tag=miniwallsrskilltext,limit=1] {text:'[{"text":"Something magic is in it.","color":"light_purple"}]'}