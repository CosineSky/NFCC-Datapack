clear @a
scoreboard objectives add MWGuardiansHealthPercent dummy "gh"
scoreboard objectives add MWGuardiansAttackCD dummy "gcd"
function ingame:dowhenload/summonguardians
scoreboard players set @e[tag=miniwallsguardian] MWGuardiansHealthPercent 0
scoreboard players set @e[tag=miniwallsguardian] MWGuardiansAttackCD 0

scoreboard objectives remove MWDeathTimer
scoreboard objectives add MWDeathTimer dummy "mwdt"
scoreboard players set @a MWDeathTimer 0

scoreboard objectives remove MWDeathCount
scoreboard objectives add MWDeathCount deathCount "mwd"
scoreboard players set @a MWDeathCount 0
scoreboard objectives remove MWKillCount
scoreboard objectives add MWKillCount playerKillCount "mwk"
scoreboard players set @a MWKillCount 0

scoreboard players set DECREASEGUARDIANSHEALTH data 80

scoreboard objectives add MWGuardiansExistance dummy "mwge"
scoreboard players set RED MWGuardiansExistance 1
scoreboard players set GREEN MWGuardiansExistance 1
scoreboard players set BLUE MWGuardiansExistance 1
scoreboard players set YELLOW MWGuardiansExistance 1

scoreboard players set CANJUDGEEND data 0
schedule function ingame:doticks/judgeend/canjudgeend 23s
schedule function ingame:dowhenload/begintimer/15s 8s
schedule function ingame:dowhenload/begintimer/10s 13s
schedule function ingame:dowhenload/begintimer/5s 18s
schedule function ingame:dowhenload/begintimer/4s 19s
schedule function ingame:dowhenload/begintimer/3s 20s
schedule function ingame:dowhenload/begintimer/2s 21s
schedule function ingame:dowhenload/begintimer/1s 22s
schedule function ingame:dowhenload/begintimer/go 23s

scoreboard players set SKILLCD data 0
scoreboard players set RSKILLCD data 0

kill @e[tag=skillmarker]
kill @e[tag=reinforceskillmarker]
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[reinforceskillmarker,YamatoMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[reinforceskillmarker,RockMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,SuperAxeMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,LaserMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,WardenMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,AirAttackMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,CreeperRainMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,SuperShovelMarker]}
execute at @e[tag=miniwallscenter] run summon marker ~0 ~-100 ~0 {NoGravity:1b,Tags:[skillmarker,RickrollMarker]}

scoreboard objectives add MWWardenTimer dummy "warden"
scoreboard objectives add MWAirAttack dummy "mwaa"
scoreboard players set @a MWAirAttack 0

kill @e[type=warden]
kill @e[tag=particle_unit]

kill @e[tag=miniwallsskillblock]
kill @e[tag=miniwallsskilltext]
execute at @e[tag=miniwallscenter] run summon block_display ~ ~1 ~ {Tags:[miniwallsskillblock],block_state:{Name:"minecraft:ender_chest"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,1f,0f,0.5f,0f,0f,1f,-0.5f,1f,1f,1f,1f],brightness:{block:15,sky:15},billboard:vertical}
execute at @e[tag=miniwallscenter] run summon text_display ~ ~1 ~ {Tags:[miniwallsskilltext],text:'[{"text":"Guess what is in it?","color":"light_purple"}]',billboard:center}

kill @e[tag=miniwallsrskillblock]
kill @e[tag=miniwallsrskilltext]
execute at @e[tag=miniwallscenter] run summon block_display ~ ~54 ~ {Tags:[miniwallsrskillblock],block_state:{Name:"minecraft:ender_chest"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,1f,0f,0.5f,0f,0f,1f,-0.5f,1f,1f,1f,1f],brightness:{block:15,sky:15},billboard:vertical}
execute at @e[tag=miniwallscenter] run summon text_display ~ ~54 ~ {Tags:[miniwallsrskilltext],text:'[{"text":"Something magic is in it.","color":"light_purple"}]',billboard:center,see_through:true}

scoreboard objectives remove MWDuringYamato
scoreboard objectives add MWDuringYamato dummy "mwdy"
scoreboard players set @a[tag=!spec] MWDuringYamato 0

kill @e[tag=levitatemarker]
execute at @e[tag=miniwallscenter] run summon marker ~35.5 ~1 ~35.5 {Tags:[levitatemarker]}
execute at @e[tag=miniwallscenter] run summon marker ~-36.5 ~1 ~35.5 {Tags:[levitatemarker]}
execute at @e[tag=miniwallscenter] run summon marker ~35.5 ~1 ~-36.5 {Tags:[levitatemarker]}
execute at @e[tag=miniwallscenter] run summon marker ~-36.5 ~1 ~-36.5 {Tags:[levitatemarker]}

stopsound @a
scoreboard players set MWDURINGRICKROLL data 0
scoreboard players set MWBGM data 0


scoreboard players set MWHAVEEND data 0
execute as @a[tag=spec] at @e[tag=miniwallscenter,limit=1] run tp @s ~ ~10 ~
gamemode spectator @a[tag=spec]