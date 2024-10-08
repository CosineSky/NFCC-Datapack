tellraw @a [{"text":"[","color":"white"},{"text":"⚠","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" 使用了技能"},{"text":"连招大师","color":"yellow","bold":true},{"text":"。"}]
tag @a remove warrior
tag @a remove iron_heart
tag @a remove soul_siphon
tag @a remove combo_master
tag @a remove dream_destroyer
tag @a remove legion_commander
tag @s add combo_master
advancement revoke @s only game:buff/combo_master
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1