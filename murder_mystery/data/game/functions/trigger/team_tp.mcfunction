scoreboard players set @s bingo_team_tp 0

execute if entity @s[team=red] run tp @s @r[team=red,distance=2..]
execute if entity @s[team=blue] run tp @s @r[team=blue,distance=2..]
execute if entity @s[team=green] run tp @s @r[team=green,distance=2..]
execute if entity @s[team=yellow] run tp @s @r[team=yellow,distance=2..]

execute at @s[team=red] unless entity @a[team=red,distance=2..] run tellraw @s ["[❌] ",{"text":"没有可供传送的目标！","color":"red"}]
execute at @s[team=blue] unless entity @a[team=blue,distance=2..] run tellraw @s ["[❌] ",{"text":"没有可供传送的目标！","color":"red"}]
execute at @s[team=green] unless entity @a[team=green,distance=2..] run tellraw @s ["[❌] ",{"text":"没有可供传送的目标！","color":"red"}]
execute at @s[team=yellow] unless entity @a[team=yellow,distance=2..] run tellraw @s ["[❌] ",{"text":"没有可供传送的目标！","color":"red"}]

execute at @s[team=red] if entity @a[team=red,distance=2..] run tellraw @s ["[✔] ",{"text":"已成功传送至队伍内一名随机玩家处！","color":"green"}]
execute at @s[team=blue] if entity @a[team=blue,distance=2..] run tellraw @s ["[✔] ",{"text":"已成功传送至队伍内一名随机玩家处！","color":"green"}]
execute at @s[team=green] if entity @a[team=green,distance=2..] run tellraw @s ["[✔] ",{"text":"已成功传送至队伍内一名随机玩家处！","color":"green"}]
execute at @s[team=yellow] if entity @a[team=yellow,distance=2..] run tellraw @s ["[✔] ",{"text":"已成功传送至队伍内一名随机玩家处！","color":"green"}]