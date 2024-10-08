# All markers in-map with specific TAGS need to be placed manually, including:
# "normal_chest", "starting_spot"

# Datas
scoreboard objectives add data dummy
scoreboard players set ALIVE data 0
scoreboard players set INGAME data 0
scoreboard players set STARTED data 0
scoreboard players set CONST_20 data 20
scoreboard players set CONST_180 data 180
scoreboard players set RNG tick_elapsed 0
scoreboard players set BGM tick_elapsed 0
scoreboard players set GAME tick_elapsed 0

# General objective for tracking time
# scoreboard objectives add sec_elapsed dummy
# scoreboard objectives add tick_elapsed dummy

# Track status of the game
# scoreboard objectives add game_status_hg dummy
# scoreboard objectives modify game_status_hg displayname [{"text":"battle_box","bold":true},{"text":" - v0.1","color":"gray"}]

# Track players' kills & health
# scoreboard objectives add kill_count minecraft.custom:minecraft.player_kills
# scoreboard objectives setdisplay list kill_count
# scoreboard objectives add health health
# scoreboard objectives setdisplay belowName health

# Track players' deaths
# scoreboard objectives add death_tick minecraft.custom:minecraft.time_since_death

# Waiting room
# scoreboard objectives add ready dummy

# Vanilla settings
# gamerule doDaylightCycle false
# gamerule doWeatherCycle false
# gamerule doMobSpawning false
# gamerule keepInventory true

