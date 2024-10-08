execute if score CANJUDGEEND data matches 0 as @e[tag=blueguardian] at @s run tellraw @a[team=MWblue,distance=10..] [{"text":"[❌] "},{"text": "战斗尚未开始，你不能走出这里 :)","color": "red"}]
execute if score CANJUDGEEND data matches 0 as @e[tag=blueguardian] at @s run tp @a[team=MWblue,distance=10..] @e[tag=bluesp,limit=1]

execute if score CANJUDGEEND data matches 0 as @e[tag=greenguardian] at @s run tellraw @a[team=MWgreen,distance=10..] [{"text":"[❌] "},{"text": "战斗尚未开始，你不能走出这里 :)","color": "red"}]
execute if score CANJUDGEEND data matches 0 as @e[tag=greenguardian] at @s run tp @a[team=MWgreen,distance=10..] @e[tag=greensp,limit=1]

execute if score CANJUDGEEND data matches 0 as @e[tag=yellowguardian] at @s run tellraw @a[team=MWyellow,distance=10..] [{"text":"[❌] "},{"text": "战斗尚未开始，你不能走出这里 :)","color": "red"}]
execute if score CANJUDGEEND data matches 0 as @e[tag=yellowguardian] at @s run tp @a[team=MWyellow,distance=10..] @e[tag=yellowsp,limit=1]

execute if score CANJUDGEEND data matches 0 as @e[tag=redguardian] at @s run tellraw @a[team=MWred,distance=10..] [{"text":"[❌] "},{"text": "战斗尚未开始，你不能走出这里 :)","color": "red"}]
execute if score CANJUDGEEND data matches 0 as @e[tag=redguardian] at @s run tp @a[team=MWred,distance=10..] @e[tag=redsp,limit=1]