execute if entity @e[type=item,nbt={Item:{tag:{LaserRelease:1b}}}] at @e[type=item,nbt={Item:{tag:{LaserRelease:1b}}}] run tag @p add laserreleaser
execute if entity @e[type=item,nbt={Item:{tag:{LaserRelease:1b}}}] run summon marker 0 0 0 {Tags:[laserrelease]}
execute if entity @e[type=item,nbt={Item:{tag:{LaserRelease:1b}}}] as @e[type=item,nbt={Item:{tag:{LaserRelease:1b}}}] run kill @s
execute as @e[tag=laserrelease] at @s run tp @s @a[tag=laserreleaser,limit=1]
execute at @a[tag=laserreleaser] run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1 1

function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot
function laser:shoot

kill @e[tag=laserrelease]
execute as @a[tag=hurtbylaser,scores={MWDeathCount=1},tag=!spec] run tellraw @a [{"selector":"@a[tag=hurtbylaser,scores={MWDeathCount=1},tag=!spec]"},{"text": "被","color": "gray"},{"selector":"@a[tag=laserreleaser,tag=!spec]"},{"text": "的一道尖啸音波抹除了。R.I.P.","color": "gray"}]
tag @a[tag=hurtbylaser,scores={MWDeathCount=1},tag=!spec] add nogenericdeath

execute as @a[tag=hurtbylaser,scores={MWDeathCount=1},tag=!spec] run tellraw @a[tag=laserreleaser,tag=!spec] [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute as @a[tag=hurtbylaser,scores={MWDeathCount=1},tag=!spec] run scoreboard players add @a[tag=laserreleaser] round_score_mb 20

tag @a remove hurtbylaser
tag @a remove laserreleaser
