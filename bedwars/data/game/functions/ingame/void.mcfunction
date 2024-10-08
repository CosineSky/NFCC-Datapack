# Check if a player is pushed to the void
execute as @a at @s if entity @s[y=-10,dy=10] on attacker run tag @s add void_kill

# Send random death msg to all players
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 0..11 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 误认为虚空是自己的队友。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 12..23 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 尝试在虚空上行走，但没有成功。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 24..35 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 忘记了自己不是猪，不能飞。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 36..47 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 突然意识到自己的鞘翅落在了家里。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 48..59 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 掉出了这个残酷的世界。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 60..71 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 脚下一滑，便拥抱了虚空。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 72..83 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 感受到了自由落体的快乐。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score RNG tick_elapsed matches 84.. run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 以最朴素的方式跌入了虚空。","color":"white"}]

execute as @a at @s if entity @s[y=-10,dy=10] if entity @a[tag=void_kill] if score RNG tick_elapsed matches 0..50 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 被","color":"white"},{"selector":"@e[tag=void_kill,tag=!spec]"},{"text":" 无情地击入了虚空。","color":"white"}]
execute as @a at @s if entity @s[y=-10,dy=10] if entity @a[tag=void_kill] if score RNG tick_elapsed matches 51..100 run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 输掉了和","color":"white"},{"selector":"@e[tag=void_kill,tag=!spec]"},{"text":" 的战桥决斗。","color":"white"}]

execute as @a at @s if entity @s[y=-10,dy=10] unless entity @a[tag=void_kill] if score @s respawnable matches 0 run tellraw @a {"text":"最终击杀！","color":"aqua","bold":true}

# Reset the victim's deaht tick manually
execute as @a at @s if entity @s[y=-10,dy=10] run scoreboard players set @s death_tick -1

# Prevent death msg from being sent multiple times
execute as @a at @s if entity @s[y=-10,dy=10] run tp @s ~ ~-30 ~

# Rewards upon void kills
tellraw @a[tag=void_kill] [{"text":"+20","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute as @a[tag=void_kill] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players add @a[tag=void_kill] round_score_mb 25

# Remove void-kill label
tag @a remove void_kill

