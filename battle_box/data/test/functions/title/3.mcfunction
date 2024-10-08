title @a title {"text":"3","color":"green"}
schedule function test:title/2 1s

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
tellraw @a [{"text":"[♦] "},{"text":"距离战斗开始还有","color":"yellow","bold":true},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]