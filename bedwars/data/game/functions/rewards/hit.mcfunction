# Soul Siphon
execute if score RNG tick_elapsed matches 1..8 at @s[tag=soul_siphon] run particle minecraft:heart ~ ~1 ~ 0.25 1 0.25 0.1 10
execute if score RNG tick_elapsed matches 1..8 at @s[tag=soul_siphon] run effect give @s minecraft:regeneration 1 2 true
execute if score RNG tick_elapsed matches 1..8 as @s[tag=soul_siphon] run playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 0.5 1

# Combo Master
execute if score RNG tick_elapsed matches 41..50 at @s[tag=combo_master] run particle minecraft:firework ~ ~1 ~ 0.25 1 0.25 0.1 20
execute if score RNG tick_elapsed matches 41..50 at @s[tag=combo_master] run effect give @s minecraft:regeneration 1 2 true
execute if score RNG tick_elapsed matches 41..50 as @s[tag=combo_master] run playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.5 2

advancement revoke @s only game:hit