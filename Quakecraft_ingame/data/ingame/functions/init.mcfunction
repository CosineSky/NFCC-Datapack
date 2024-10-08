gamemode adventure @a[tag=!spec]
effect clear @a
effect give @a resistance 32767 10 true
effect give @a saturation 32767 1 true
effect give @a speed 32767 1 true
scoreboard players set INGAME data 1
execute as @a at @s run tp @e[type=marker,name="qc",sort=random,limit=1]
scoreboard objectives remove qc_killcount
scoreboard objectives add qc_killcount dummy {"text":"恶霸榜","color": "red"}
scoreboard players set @a qc_killcount 0
scoreboard objectives setdisplay sidebar qc_killcount
scoreboard objectives add qc_ifaddkillcount dummy "ifadd"
scoreboard players set BGM tick_elapsed -1
scoreboard players set @a round_score_mb 0
scoreboard players set @a tick_elapsed 50

schedule function ingame:timer/4min 60s
schedule function ingame:timer/3min 120s
schedule function ingame:timer/2min 180s
schedule function ingame:timer/1min 240s
schedule function ingame:timer/5s 295s
schedule function ingame:timer/4s 296s
schedule function ingame:timer/3s 297s
schedule function ingame:timer/2s 298s
schedule function ingame:timer/1s 299s
schedule function ingame:timer/timer_to_end 300s

tellraw @a [{"text":"[","color":"white"},{"text":"☘","color":"yellow"},{"text":"]"},{"text":" BGM: ","color":"gray","italic":true},{"text":"Ace Race ","color":"white","italic":true},{"text":"From MCC Original Soundtracks.","color":"gray","italic":true}]
tellraw @a {"text":"CLICK TO TURN OFF!","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/stopsound @s master minecraft:tnt_tags"},"hoverEvent":{"action":"show_text","value":"Click to stop background music!"}}