datapack enable "file/event_hall"
tp @a -1985 11 -40 facing -1944 17 -40
spawnpoint @a -1985 11 -40
team leave @a[tag=!spec]
function game:levels/levels_set
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Event Hall","color":"green","bold":true}
advancement revoke @a only game:enter_event_hall

function game:levels/levels_set