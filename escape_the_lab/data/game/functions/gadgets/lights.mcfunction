# Runs traffic lights
scoreboard players add MOUNTAIN_LIGHTS tick_elapsed 1
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 60.. run scoreboard players set MOUNTAIN_LIGHTS tick_elapsed 0

# Changes the lights' colors
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 0 run function game:gadgets/universal/light_color/to_red
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 20 run function game:gadgets/universal/light_color/to_green
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 40 run function game:gadgets/universal/light_color/to_yellow

# Lights' operations
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 0 run function game:gadgets/universal/light_marker/place
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 1..19 run function game:gadgets/universal/light_marker/check
execute if score MOUNTAIN_LIGHTS tick_elapsed matches 20 run function game:gadgets/universal/light_marker/remove