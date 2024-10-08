
execute as @e[tag=hurt] run damage @s 100 magic

execute as @a[tag=hurt,scores={MWDeathCount=1},tag=!spec] run tellraw @a [{"selector":"@a[tag=hurt,scores={MWDeathCount=1},tag=!spec]"},{"text": "毙命于 次元斩·绝 的刀光下。R.I.P.","color": "gray"}]
tag @a[tag=hurt,scores={MWDeathCount=1},tag=!spec] add nogenericdeath
tag @a remove hurt

tag @a[tag=releaser] remove releaser
