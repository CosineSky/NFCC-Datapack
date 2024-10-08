scoreboard objectives remove MWTeamDivision
scoreboard objectives add MWTeamDivision dummy "team"
scoreboard players set @a MWTeamDivision 0
team add MWred {"text": "RED","bold": true,"color": "red"}
team add MWblue {"text": "BLUE","bold": true,"color": "blue"}
team add MWgreen {"text": "GREEN","bold": true,"color": "green"}
team add MWyellow {"text": "YELLOW","bold": true,"color": "yellow"}
team empty MWblue
team empty MWgreen
team empty MWred
team empty MWyellow
team modify MWblue color blue
team modify MWgreen color green
team modify MWred color red
team modify MWyellow color yellow
team modify MWblue friendlyFire false
team modify MWgreen friendlyFire false
team modify MWred friendlyFire false
team modify MWyellow friendlyFire false
function ingame:dowhenload/teamdivision/teamdivisionrecursion

execute as @a[team=MWblue] at @s run tp @s @e[tag=bluesp,limit=1]
execute as @a[team=MWgreen] at @s run tp @s @e[tag=greensp,limit=1]
execute as @a[team=MWred] at @s run tp @s @e[tag=redsp,limit=1]
execute as @a[team=MWyellow] at @s run tp @s @e[tag=yellowsp,limit=1]
gamemode adventure @a[tag=!spec]
