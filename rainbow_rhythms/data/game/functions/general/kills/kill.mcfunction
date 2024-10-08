# Send random death msg to all players
execute if entity @a[scores={MWDeathCount=1},tag=!spec] unless entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1}]"},{"text":" 从高处摔了下来","color":"white"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 没有抵抗住 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的致命一击。"}]

scoreboard players set @a[scores={MWDeathCount=1},tag=!spec] MWDeathCount 0
scoreboard players set @a[scores={MWKillCount=1..},tag=!spec] MWKillCount 0

