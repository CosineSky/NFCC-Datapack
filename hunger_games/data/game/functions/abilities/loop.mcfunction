# Abilities loop
function game:abilities/zombie/loop
# function game:abilities/spider/loop
# function game:abilities/skeleton/loop
# function game:abilities/enderman/loop
function game:abilities/creeper/loop
function game:abilities/blaze/loop

# Abilities detection
execute as @a[scores={class=1,fungus_stick=1..}] run function game:abilities/zombie/check
execute as @a[scores={class=2,fungus_stick=1..}] run function game:abilities/spider/check
execute as @a[scores={class=3,fungus_stick=1..}] run function game:abilities/skeleton/check
execute as @a[scores={class=4,fungus_stick=1..}] run function game:abilities/enderman/check
execute as @a[scores={class=5,fungus_stick=1..}] run function game:abilities/creeper/check
execute as @a[scores={class=6,fungus_stick=1..}] run function game:abilities/blaze/check