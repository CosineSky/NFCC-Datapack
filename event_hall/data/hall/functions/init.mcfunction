# Rounds of minigames
scoreboard players set PLAYED_BEDWARS data 0
scoreboard players set PLAYED_QUAKECRAFT data 0
scoreboard players set PLAYED_SHEEP_HOARDERS data 0
scoreboard players set PLAYED_BATTLE_BOX data 0
scoreboard players set PLAYED_SURVIVAL_GAMES data 0
scoreboard players set PLAYED_JOURNEYS data 0
scoreboard players set PLAYED_TNT_TAGS data 0
scoreboard players set PLAYED_MANIAC_BUILDERS data 0
scoreboard players set PLAYED_MURDER_MYSTERY data 0
scoreboard players set PLAYED_LAVA_DANCERS data 0
scoreboard players set PLAYED_MINIWALLS data 0
scoreboard players set PLAYED_THE_MOUNTAIN data 0

# Votes
function hall:vote/reset_score
function hall:paintboard/reset

# Games played in total
scoreboard players set PLAYED_GAMES data 0

# Reset the event
scoreboard players set PAUSED data 1
scoreboard players set EVENT_STARTED data 0
scoreboard players set BGM tick_elapsed -1
scoreboard players set COUNT_DOWN tick_elapsed 36000

# Remove tags
tag @a remove spec
tag @a remove player

# Remove trophies
function hall:trophy/remove

# Remove personal scores
scoreboard players set @a round_score_mb 0
scoreboard players set @a total_score_mb 0
scoreboard players set @a total_score_event 0

# Reset the champion
tag @a remove champion
