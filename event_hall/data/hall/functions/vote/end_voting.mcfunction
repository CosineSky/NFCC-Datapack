# Show prompt
title @a title {"text":"投票已结束！","color":"green","bold":true}
title @a subtitle {"text":"正在统计结果...","color":"yellow"}
tellraw @a ["[⌚] ",{"text":"投票已结束，正在统计结果...","color":"yellow"}]

# Finish voting
clear @a
schedule function hall:vote/show_results 10s
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1

# Calculating game scores
function hall:paintboard/start_calculating