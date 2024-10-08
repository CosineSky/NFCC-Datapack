# Getting the first and second players in the event
function game:event/get_first
function game:event/get_second

# Removing level prefixes
function game:levels/levels_reset

# Title display
title @a title {"text":"正在统计当前联赛得分...","color":"green","bold":true}
title @a subtitle {"text":"请耐心等待...","color":"yellow","bold":true}
tellraw @a [{"text":"[♦] "},{"text":"正在计算联赛得分前两名的玩家，他们将进入最终的战桥决斗。他们会是谁呢？","color":"yellow","bold":true}]