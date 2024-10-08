scoreboard players set REDREMAIN data 0
scoreboard players set GREENREMAIN data 0
scoreboard players set BLUEREMAIN data 0
scoreboard players set YELLOWREMAIN data 0

execute as @e[tag=redguardian] run scoreboard players set REDREMAIN data 1
execute as @a[team=MWred,gamemode=!spectator] run scoreboard players set REDREMAIN data 1

execute as @e[tag=blueguardian] run scoreboard players set BLUEREMAIN data 1
execute as @a[team=MWblue,gamemode=!spectator] run scoreboard players set BLUEREMAIN data 1

execute as @e[tag=yellowguardian] run scoreboard players set YELLOWREMAIN data 1
execute as @a[team=MWyellow,gamemode=!spectator] run scoreboard players set YELLOWREMAIN data 1

execute as @e[tag=greenguardian] run scoreboard players set GREENREMAIN data 1
execute as @a[team=MWgreen,gamemode=!spectator] run scoreboard players set GREENREMAIN data 1


execute if score REDREMAIN data matches 1 if score BLUEREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run title @a title [{"text": "红队","color": "red","bold": true},{"text": "获得了胜利！","color": "gray","bold": true}]
execute if score REDREMAIN data matches 1 if score BLUEREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players set MWHAVEEND data 1
execute if score REDREMAIN data matches 1 if score BLUEREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run gamemode adventure @a[tag=!spec]
execute if score REDREMAIN data matches 1 if score BLUEREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run tellraw @a[team=MWred] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
execute if score REDREMAIN data matches 1 if score BLUEREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players add @a[team=MWred] round_score_mb 270

execute if score BLUEREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run title @a title [{"text": "蓝队","color": "blue","bold": true},{"text": "获得了胜利！","color": "gray","bold": true}]
execute if score BLUEREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players set MWHAVEEND data 1
execute if score BLUEREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run gamemode adventure @a[tag=!spec]
execute if score BLUEREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run tellraw @a[team=MWblue] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
execute if score BLUEREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players add @a[team=MWblue] round_score_mb 270

execute if score YELLOWREMAIN data matches 1 if score REDREMAIN data matches 0 if score BLUEREMAIN data matches 0 if score GREENREMAIN data matches 0 run title @a title [{"text": "黄队","color": "yellow","bold": true},{"text": "获得了胜利！","color": "gray","bold": true}]
execute if score YELLOWREMAIN data matches 1 if score REDREMAIN data matches 0 if score BLUEREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players set MWHAVEEND data 1
execute if score YELLOWREMAIN data matches 1 if score REDREMAIN data matches 0 if score BLUEREMAIN data matches 0 if score GREENREMAIN data matches 0 run gamemode adventure @a[tag=!spec]
execute if score YELLOWREMAIN data matches 1 if score REDREMAIN data matches 0 if score BLUEREMAIN data matches 0 if score GREENREMAIN data matches 0 run tellraw @a[team=MWyellow] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
execute if score YELLOWREMAIN data matches 1 if score REDREMAIN data matches 0 if score BLUEREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players add @a[team=MWyellow] round_score_mb 270

execute if score GREENREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score BLUEREMAIN data matches 0 run title @a title [{"text": "绿队","color": "green","bold": true},{"text": "获得了胜利！","color": "gray","bold": true}]
execute if score GREENREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score BLUEREMAIN data matches 0 run scoreboard players set MWHAVEEND data 1
execute if score GREENREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score BLUEREMAIN data matches 0 run gamemode adventure @a[tag=!spec]
execute if score GREENREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score BLUEREMAIN data matches 0 run tellraw @a[team=MWgreen] [{"text":"+270","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
execute if score GREENREMAIN data matches 1 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score BLUEREMAIN data matches 0 run scoreboard players add @a[team=MWgreen] round_score_mb 270

execute if score BLUEREMAIN data matches 0 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run title @a title [{"text": "平局！","color": "gray","bold": true}]
execute if score BLUEREMAIN data matches 0 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run scoreboard players set MWHAVEEND data 1
execute if score BLUEREMAIN data matches 0 if score REDREMAIN data matches 0 if score YELLOWREMAIN data matches 0 if score GREENREMAIN data matches 0 run gamemode adventure @a[tag=!spec]

execute if score MWHAVEEND data matches 1 run execute as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1 
execute if score MWHAVEEND data matches 1 run clear @a
execute if score MWHAVEEND data matches 1 run schedule function ingame:doticks/judgeend/win 5s