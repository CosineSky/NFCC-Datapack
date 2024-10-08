# Randomizing candidates (Only in Practice Mode)
# tag @r[tag=!first,tag=!second] add first
# tag @r[tag=!first,tag=!second] add second

# Joining teams
team leave @a
team join redNoPref @a[limit=1,tag=first]
team join blueNoPref @a[limit=1,tag=second]
execute as @e[tag=bridge_spawn_red] at @s run spawnpoint @a[limit=1,tag=first] ~ ~ ~
execute as @e[tag=bridge_spawn_blue] at @s run spawnpoint @a[limit=1,tag=second] ~ ~ ~
gamemode adventure @a[tag=first]
gamemode adventure @a[tag=second]

# Teleporting to the arena
function game:general/switch_ingame

# Starting the game
clear @a[tag=!spec]
effect clear @a[tag=!spec]
scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0
scoreboard players set BRIDGE_RED data 0
scoreboard players set BRIDGE_BLUE data 0

# Starting the first round
schedule function game:general/rounds/new_round 1t
