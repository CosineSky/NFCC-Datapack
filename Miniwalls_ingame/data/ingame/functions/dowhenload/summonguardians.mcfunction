#summon guardians
kill @e[type=elder_guardian,tag=miniwallsguardian]
execute as @e[tag=miniwallscenter] at @s run summon minecraft:elder_guardian ~27 ~5 ~27 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Health:500f,Tags:["miniwallsguardian","redguardian"],Attributes:[{Base:500d,Name:"generic.max_health"}]}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:elder_guardian ~27 ~5 ~-27 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Health:500f,Tags:["miniwallsguardian","yellowguardian"],Attributes:[{Base:500d,Name:"generic.max_health"}]}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:elder_guardian ~-27 ~5 ~27 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Health:500f,Tags:["miniwallsguardian","greenguardian"],Attributes:[{Base:500d,Name:"generic.max_health"}]}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:elder_guardian ~-27 ~5 ~-27 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Health:500f,Tags:["miniwallsguardian","blueguardian"],Attributes:[{Base:500d,Name:"generic.max_health"}]}
execute as @e[tag=miniwallsguardian] at @s run tp @s ~ ~ ~ facing entity @e[tag=miniwallscenter,limit=1]
execute as @a at @e[tag=miniwallscenter,limit=1] run spawnpoint @s ~ ~20 ~


#display guardians' info
kill @e[type=text_display,tag=miniwallstextdisplay]
execute as @e[tag=miniwallscenter] at @s run summon minecraft:text_display ~27 ~4.2 ~27 {Tags:["miniwallstextdisplay","textdisplayred"],text:'{"text":"Red Guardian\\n||||||||||||||||||||","color":"red"}',billboard:center,see_through:true}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:text_display ~27 ~4.2 ~-27 {Tags:["miniwallstextdisplay","textdisplayyellow"],text:'{"text":"Yellow Guardian\\n||||||||||||||||||||","color":"yellow"}',billboard:center,see_through:true}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:text_display ~-27 ~4.2 ~27 {Tags:["miniwallstextdisplay","textdisplaygreen"],text:'{"text":"Green Guardian\\n||||||||||||||||||||","color":"green"}',billboard:center,see_through:true}
execute as @e[tag=miniwallscenter] at @s run summon minecraft:text_display ~-27 ~4.2 ~-27 {Tags:["miniwallstextdisplay","textdisplayblue"],text:'{"text":"Blue Guardian\\n||||||||||||||||||||","color":"blue"}',billboard:center,see_through:true}


#summon guardians' aim
kill @e[type=marker,tag=miniwallsguardiansaim]
execute at @e[tag=redguardian] run summon marker ~ ~ ~ {Tags:["miniwallsguardiansaim","redaim"]}
execute at @e[tag=greenguardian] run summon marker ~ ~ ~ {Tags:["miniwallsguardiansaim","greenaim"]}
execute at @e[tag=blueguardian] run summon marker ~ ~ ~ {Tags:["miniwallsguardiansaim","blueaim"]}
execute at @e[tag=yellowguardian] run summon marker ~ ~ ~ {Tags:["miniwallsguardiansaim","yellowaim"]}


#summon spwanpointmarkers
kill @e[tag=miniwallsspawnpoint]
execute at @e[tag=redguardian] run summon marker ~-4 ~-4 ~-4 {Tags:["miniwallsspawnpoint","redsp"]}
execute at @e[tag=yellowguardian] run summon marker ~-4 ~-4 ~4 {Tags:["miniwallsspawnpoint","yellowsp"]}
execute at @e[tag=greenguardian] run summon marker ~4 ~-4 ~-4 {Tags:["miniwallsspawnpoint","greensp"]}
execute at @e[tag=blueguardian] run summon marker ~4 ~-4 ~4 {Tags:["miniwallsspawnpoint","bluesp"]}

function ingame:dowhenload/teamdivision/teamdivision