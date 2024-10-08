execute unless entity @e[tag=skillnow] run data merge entity @e[tag=miniwallsskillblock,limit=1] {block_state:{Name:"air"}}
execute if entity @e[tag=skillnow] run data merge entity @e[tag=miniwallsskillblock,limit=1] {block_state:{Name:"minecraft:ender_chest"}}

execute unless entity @e[tag=skillnow] run data merge entity @e[tag=miniwallsskilltext,limit=1] {text:'[{"text":"EMPTY","color":"gray"}]'}
execute if entity @e[tag=skillnow] run data merge entity @e[tag=miniwallsskilltext,limit=1] {text:'[{"text":"Guess what is in it?","color":"light_purple"}]'}