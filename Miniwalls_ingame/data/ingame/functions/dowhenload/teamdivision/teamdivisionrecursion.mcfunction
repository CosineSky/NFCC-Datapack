#red
tag @a[limit=1,sort=random,scores={MWTeamDivision=0},tag=!spec] add havejoinedteam
scoreboard players set @a[tag=havejoinedteam] MWTeamDivision 1
team join MWred @a[tag=havejoinedteam]
tag @a[tag=havejoinedteam] remove havejoinedteam
#blue
tag @a[limit=1,sort=random,scores={MWTeamDivision=0},tag=!spec] add havejoinedteam
scoreboard players set @a[tag=havejoinedteam] MWTeamDivision 1
team join MWblue @a[tag=havejoinedteam]
tag @a[tag=havejoinedteam] remove havejoinedteam
#yellow
tag @a[limit=1,sort=random,scores={MWTeamDivision=0},tag=!spec] add havejoinedteam
scoreboard players set @a[tag=havejoinedteam] MWTeamDivision 1
team join MWyellow @a[tag=havejoinedteam]
tag @a[tag=havejoinedteam] remove havejoinedteam
#green
tag @a[limit=1,sort=random,scores={MWTeamDivision=0},tag=!spec] add havejoinedteam
scoreboard players set @a[tag=havejoinedteam] MWTeamDivision 1
team join MWgreen @a[tag=havejoinedteam]
tag @a[tag=havejoinedteam] remove havejoinedteam

execute if entity @a[scores={MWTeamDivision=0},tag=!spec] run function ingame:dowhenload/teamdivision/teamdivisionrecursion
