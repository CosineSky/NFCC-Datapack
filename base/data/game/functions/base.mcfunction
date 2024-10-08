# Scoreboard initializtion
function game:hub/init

# Map selectors
function game:hub/map_selectors

# Teleporter zombies
function game:hub/zombies

# Lobby parkours
function game:hub/parkour

# Prompts to players joining the server
execute if entity @a[scores={relog=1..}] run function game:hub/online_prompt

# Miscs
function game:hub/miscs
