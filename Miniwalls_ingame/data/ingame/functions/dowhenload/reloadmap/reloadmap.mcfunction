title @a title {"text": "正在恢复地图...","color": "gold","bold": true}
effect give @a[tag=!spec,gamemode=!spectator] slowness 1 50 true
effect give @a[tag=!spec,gamemode=!spectator] jump_boost 1 181 true
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~-48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker,reloadhead]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~-48 ~96 {NoGravity:1b,Tags:[reloadmapmarker,reloadtail]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-16 ~-48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~16 ~-48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~48 ~-48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~-16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-16 ~-16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~16 ~-16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~48 ~-16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-16 ~16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~16 ~16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~48 ~16 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-16 ~48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~16 ~48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~48 ~48 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-48 ~80 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~-16 ~80 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~16 ~80 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}
execute as @e[tag=miniwallscenter] at @s run summon marker ~48 ~80 ~-64 {NoGravity:1b,Tags:[reloadmapmarker]}

schedule function ingame:dowhenload/reloadmap/reloadmaprecursion 0.5s


