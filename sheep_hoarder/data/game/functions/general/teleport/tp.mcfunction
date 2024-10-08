team join red @a[tag=red]
team join blue @a[tag=blue]
team join green @a[tag=green]
team join yellow @a[tag=yellow]

tp @a[tag=red] @e[tag=sheep_base_red,limit=1]
tp @a[tag=blue] @e[tag=sheep_base_blue,limit=1]
tp @a[tag=green] @e[tag=sheep_base_green,limit=1]
tp @a[tag=yellow] @e[tag=sheep_base_yellow,limit=1]

title @a[tag=red] title [{"text":"你的队伍是：","color":"gold"},{"text":"红队","color":"red","bold":true}]
title @a[tag=blue] title [{"text":"你的队伍是：","color":"gold"},{"text":"蓝队","color":"blue","bold":true}]
title @a[tag=green] title [{"text":"你的队伍是：","color":"gold"},{"text":"绿队","color":"green","bold":true}]
title @a[tag=yellow] title [{"text":"你的队伍是：","color":"gold"},{"text":"黄队","color":"yellow","bold":true}]
title @a subtitle {"text":"祝你好运。","color":"yellow"}

tag @a remove red
tag @a remove blue
tag @a remove green
tag @a remove yellow

