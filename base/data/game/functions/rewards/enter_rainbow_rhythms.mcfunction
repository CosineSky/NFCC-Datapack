# datapack enable "file/rainbow_rhythms"
# tp @a -1020.5 115 919.5
# spawnpoint @a -1020 115 919
# title @a title {"text":"你现在的大厅：","color":"yellow"}
# title @a subtitle {"text":"Rainbow Rhythms","color":"green","bold":true}
# advancement revoke @a only game:enter_rainbow_rhythms
# scoreboard players set @a ready 0

# # Showing prompts
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}
# tellraw @a {"text":"                        ???","bold":true,"color":"yellow"}
# tellraw @a [{"text":" ● ","color":"yellow"},{"text":"???","color":"white"}]
# # tellraw @a [{"text":" ● ","color":"yellow"},{"text":"射击其他玩家下方的TNT，来让他们坠入下方的熔岩吧。","color":"white"}]
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# function game:levels/levels_reset
# time set noon

tellraw @s [{"text":"["},{"text":"❌","color":"red"},{"text":"]"},{"text":" 该游戏正在维护中，稍后回来！","color":"yellow","bold":true}]
advancement revoke @a only game:enter_rainbow_rhythms