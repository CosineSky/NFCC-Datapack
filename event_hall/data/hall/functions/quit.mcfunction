function hall:init
# function hall:fireworks/beacons/beacon_off
datapack disable "file/event_hall"

tag @a remove spec
tag @a remove player
team leave @a

time set day
function game:lobby