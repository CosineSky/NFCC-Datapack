kill @e[type=item]
kill @e[type=arrow,nbt={OnGround:1b}]
effect clear @a
clear @a
schedule function test:game/end_plus 5s
schedule clear test:title/1min
schedule clear test:win/no_win