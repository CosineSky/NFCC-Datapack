data merge entity @e[type=minecraft:block_display,limit=1,tag=comp1] {block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[5.333f,-2.666f,0f,-1.333f, 5.333f,2.666f,0f,-4f, 0f,0f,1.885f,-0.943f, 1f,1f,1f,1f],brightness:{block:15,sky:15}}
data merge entity @e[type=minecraft:block_display,limit=1,tag=comp2] {block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[2.666f,-1.333f,0f,-0.666f,2.666f,1.333f,0f,-2f,0f,0f,7.542f,-3.771f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
data merge entity @e[type=minecraft:block_display,limit=1,tag=comp3] {block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[1.333f,-5.333f,0f,2f,1.333f,5.333f,0f,-3.333f,0f,0f,3.771f,-1.885f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
data merge entity @e[type=minecraft:block_display,limit=1,tag=comp4] {block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[4f,-4f,0f,0f,4f,4f,0f,-4f,0f,0f,1.508f,-0.754f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
data merge entity @e[type=minecraft:block_display,limit=1,tag=comp5] {block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[4f,-1.067f,0f,-1.467f,4f,1.067f,0f,-2.533f,0f,0f,5.657f,-2.828f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
data merge entity @e[type=minecraft:block_display,limit=1,tag=comp6] {block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[1.067f,-4f,0f,1.467f,1.067f,4f,0f,-2.533f,0f,0f,5.657f,-2.828f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
execute at @e[tag=comp1] run summon marker ~ ~ ~ {Tags:[end],NoGravity:1} 
execute at @e[tag=comp1] run summon marker ~-30 ~30 ~ {Tags:[start],NoGravity:1} 
execute at @e[tag=start] run tp @e[tag=start] ~ ~ ~ 270 45
function custom:particle_trace
schedule function custom:kill_rock 1.5s
