# Spectators
# team modify spec color gray
# team modify spec prefix {"text":"旁观者 ","color":"white"}

# Game breaker
# team modify game_breaker color red
# team modify game_breaker prefix [{"text":"","color":"white"},{"text":"⭐ ","color":"yellow"},{"text":"Game Breaker","color":"dark_red"}," "]

# Server owner
# team modify server_owner color aqua
# team modify server_owner prefix [{"text":"","color":"white"},{"text":"⭐ ","color":"yellow"},{"text":"Server Owner","color":"blue"}," "]

# Designer
# team modify designer color light_purple
# team modify designer prefix [{"text":"","color":"white"},{"text":"⭐ ","color":"yellow"},{"text":"Designer","color":"dark_purple"}," "]

# NFC
# team modify designer color gray
# team modify designer prefix [{"text":"","color":"white"},{"text":"⭐ ","color":"yellow"},{"text":"NFC","color":"gray"}," "]

# Apply special tags to specific players
team join spec @a[tag=spec]
# execute if score EVENT_STARTED data matches 0 run team join game_breaker cyber1024
# execute if score EVENT_STARTED data matches 0 run team join designer CosSky
# execute if score EVENT_STARTED data matches 0 run team join server_owner jwjwii
# execute if score EVENT_STARTED data matches 0 run team join NFC Jasperrr_jas
# execute if score EVENT_STARTED data matches 0 run team join NFC T_tms_S
# execute if score EVENT_STARTED data matches 0 run team join NFC Thedjw