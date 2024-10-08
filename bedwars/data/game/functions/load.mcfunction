# All markers in-map with specific TAGS need to be placed manually, including:
# "tool_shop", "buff_shop", "combat_shop"
# "red_bed", "blue_bed", "green_bed", "yellow_bed"
# "red_spawn", "blue_spawn", "green_spawn", "yellow_spawn"
# "base_generator", "diamond_generator", "emerald_generator"

# Datas
scoreboard objectives add data dummy
scoreboard players set INGAME data 0
scoreboard players set STARTED data 0
scoreboard players set CONST_10 data 10
scoreboard players set CONST_20 data 20
scoreboard players set CONST_180 data 180
scoreboard players set RNG tick_elapsed 0
scoreboard players set BGM tick_elapsed 0

# General objective for tracking time
scoreboard objectives add sec_elapsed dummy
scoreboard objectives add tick_elapsed dummy

# Rotation of diamond & emerald generators
scoreboard objectives add gen_rotation dummy

# Track status of the game
scoreboard objectives add game_status dummy
scoreboard objectives modify game_status displayname [{"text":"起床战争","bold":true},{"text":" - v0.1","color":"gray"}]

# Track players' kills & health
scoreboard objectives add kill_count minecraft.custom:minecraft.player_kills
scoreboard objectives setdisplay list kill_count
scoreboard objectives add health health
scoreboard objectives setdisplay belowName health

# Track players' deaths
scoreboard objectives add death_tick minecraft.custom:minecraft.time_since_death

# Init of teams
team add red {"text":"红队","color":"red","bold":true}
team add blue {"text":"蓝队","color":"blue","bold":true}
team add green {"text":"绿队","color":"green","bold":true}
team add yellow {"text":"黄队","color":"yellow","bold":true}

# Team settings
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify red deathMessageVisibility never
team modify blue deathMessageVisibility never
team modify green deathMessageVisibility never
team modify yellow deathMessageVisibility never
team modify red prefix ["",{"text":"[红队] ","color":"red","bold":true}]
team modify blue prefix ["",{"text":"[蓝队] ","color":"blue","bold":true}]
team modify green prefix ["",{"text":"[绿队] ","color":"green","bold":true}]
team modify yellow prefix ["",{"text":"[黄队] ","color":"yellow","bold":true}]

# Beds settings
scoreboard objectives add respawnable dummy
scoreboard players set @a respawnable 1
scoreboard players set 红色床：§a✔ game_status 4
scoreboard players set 蓝色床：§a✔ game_status 3
scoreboard players set 绿色床：§a✔ game_status 2
scoreboard players set 黄色床：§a✔ game_status 1
scoreboard players set 红色床：§c❌ game_status 4
scoreboard players set 蓝色床：§c❌ game_status 3
scoreboard players set 绿色床：§c❌ game_status 2
scoreboard players set 黄色床：§c❌ game_status 1
team join red 红色床：§a✔
team join blue 蓝色床：§a✔
team join green 绿色床：§a✔
team join yellow 黄色床：§a✔
team join red 红色床：§c❌
team join blue 蓝色床：§c❌
team join green 绿色床：§c❌
team join yellow 黄色床：§c❌
scoreboard objectives add red_bed_broken minecraft.mined:minecraft.red_bed
scoreboard objectives add blue_bed_broken minecraft.mined:minecraft.blue_bed
scoreboard objectives add green_bed_broken minecraft.mined:minecraft.lime_bed
scoreboard objectives add yellow_bed_broken minecraft.mined:minecraft.yellow_bed
scoreboard players set @a red_bed_broken 0
scoreboard players set @a blue_bed_broken 0
scoreboard players set @a green_bed_broken 0
scoreboard players set @a yellow_bed_broken 0

# Waiting room
scoreboard objectives add ready dummy

# Vanilla settings
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true

